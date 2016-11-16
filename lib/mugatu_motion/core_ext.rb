# To compile with RubyMotion, we must stub out `require` and `require_relative`
# and instead add files manually in `Motion::Project::App.setup`.

def require(*args); end
def require_relative(*args); end
