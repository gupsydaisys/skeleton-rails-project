# Controller responsible for handling all public GraphQL requests.
class GraphqlController < ActionController::Base
  protect_from_forgery

  def execute
    query = params[:query]
    context = query_context
    variables = params[:variables].presence || {}
    result = Graph::Schema.execute(
      query,
      context: context,
      variables: variables
    )
    render json: result
  end

  private def query_context
    { current_user: current_user }
  end
end
