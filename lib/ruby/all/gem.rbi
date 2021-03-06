# typed: strong
module Gem
  ConfigMap = T.let(nil, T.untyped)
  RbConfigPriorities = T.let(nil, T.untyped)
  RubyGemsPackageVersion = T.let(nil, T.untyped)
  RubyGemsVersion = T.let(nil, T.untyped)
  USE_BUNDLER_FOR_GEMDEPS = T.let(nil, T.untyped)

  def self._deprecated_detect_gemdeps(path = T.unsafe(nil)); end

  def self._deprecated_gunzip(data); end

  def self._deprecated_gzip(data); end

  def self._deprecated_inflate(data); end

  def self.activate_bin_path(name, *args); end

  def self.default_ext_dir_for(base_dir); end

  def self.default_gems_use_full_paths?; end

  def self.default_spec_cache_dir; end

  def self.deflate(data); end

  def self.detect_gemdeps(*args, &block); end

  def self.dir; end

  def self.done_installing(&hook); end

  def self.done_installing_hooks; end

  def self.ensure_default_gem_subdirectories(dir = Gem.dir, mode = nil); end

  def self.ensure_gem_subdirectories(dir = Gem.dir, mode = nil); end

  def self.ensure_subdirectories(dir, mode, subdirs); end

  def self.env_requirement(gem_name); end

  def self.extension_api_version; end

  def self.find_files(glob, check_load_path = true); end

  def self.find_files_from_load_path(glob); end

  def self.find_latest_files(glob, check_load_path = T.unsafe(nil)); end

  def self.find_unresolved_default_spec(path); end

  def self.finish_resolve(*_); end

  def self.gemdeps; end

  def self.gunzip(*args, &block); end

  def self.gzip(*args, &block); end

  def self.host; end

  def self.host=(host); end

  def self.inflate(*args, &block); end

  def self.install(name, version = T.unsafe(nil), *options); end

  def self.install_extension_in_lib; end

  def self.latest_rubygems_version; end

  def self.latest_spec_for(name); end

  def self.latest_version_for(name); end

  def self.load_env_plugins; end

  def self.load_path_insert_index; end

  def self.load_plugin_files(plugins); end

  def self.load_plugins; end

  def self.load_yaml; end

  def self.loaded_specs; end

  def self.location_of_caller(depth = T.unsafe(nil)); end

  def self.marshal_version; end

  def self.needs; end

  def self.operating_system_defaults; end

  def self.path; end

  def self.path_separator; end

  def self.paths; end

  def self.paths=(env); end

  def self.platform_defaults; end

  def self.platforms; end

  def self.platforms=(platforms); end

  def self.post_build(&hook); end

  def self.post_build_hooks; end

  def self.post_install(&hook); end

  def self.post_install_hooks; end

  def self.post_reset(&hook); end

  def self.post_reset_hooks; end

  def self.post_uninstall(&hook); end

  def self.post_uninstall_hooks; end

  def self.pre_install(&hook); end

  def self.pre_install_hooks; end

  def self.pre_reset(&hook); end

  def self.pre_reset_hooks; end

  def self.pre_uninstall(&hook); end

  def self.pre_uninstall_hooks; end

  def self.prefix; end

  def self.read_binary(path); end

  def self.refresh; end

  def self.register_default_spec(spec); end

  def self.remove_unresolved_default_spec(spec); end

  def self.ruby; end

  def self.ruby_api_version; end

  def self.ruby_engine; end

  def self.ruby_version; end

  def self.rubygems_version; end

  def self.sources; end

  def self.sources=(new_sources); end

  def self.spec_cache_dir; end

  def self.suffix_pattern; end

  def self.suffixes; end

  def self.time(msg, width = T.unsafe(nil), display = T.unsafe(nil)); end

  def self.try_activate(path); end

  def self.ui; end

  def self.use_gemdeps(path = T.unsafe(nil)); end

  def self.use_paths(home, *paths); end

  def self.user_dir; end

  def self.user_home; end

  def self.vendor_dir; end

  def self.win_platform?; end

  def self.write_binary(path, data); end

  class AvailableSet
    include Enumerable
    Elem = type_member(fixed: T.untyped)

    def <<(o); end

    def add(spec, source); end

    def all_specs; end

    def each(&blk); end

    def each_spec; end

    def empty?; end

    def find_all(req); end

    def inject_into_list(dep_list); end

    def match_platform!; end

    def pick_best!; end

    def prefetch(reqs); end

    def remote; end

    def remote=(remote); end

    def remove_installed!(dep); end

    def set; end

    def size; end

    def sorted; end

    def source_for(spec); end

    def to_request_set(development = T.unsafe(nil)); end

    class Tuple
      def source; end

      def source=(_); end

      def spec; end

      def spec=(_); end

      def self.[](*_); end

      def self.members; end
    end
  end

  class BasicSpecification
    def activated?; end

    def base_dir; end

    def base_dir=(base_dir); end

    def contains_requirable_file?(file); end

    def datadir; end

    def default_gem?; end

    def extension_dir; end

    def extension_dir=(extension_dir); end

    def extensions_dir; end

    def full_gem_path; end

    def full_gem_path=(full_gem_path); end

    def full_name; end

    def full_require_paths; end

    def gem_build_complete_path; end

    def gem_dir; end

    def gems_dir; end

    def ignored=(ignored); end

    def internal_init; end

    def lib_dirs_glob; end

    def loaded_from; end

    def loaded_from=(loaded_from); end

    def matches_for_glob(glob); end

    def name; end

    def platform; end

    def raw_require_paths; end

    def require_paths; end

    def source_paths; end

    def stubbed?; end

    def this; end

    def to_fullpath(path); end

    def to_spec; end

    def version; end

    def self.default_specifications_dir; end
  end

  module BundlerVersionFinder
    def self.bundler_version; end

    def self.bundler_version_with_reason; end

    def self.compatible?(spec); end

    def self.filter!(specs); end

    def self.missing_version_message; end
  end

  class Command
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    HELP = T.let(nil, T.untyped)

    def add_extra_args(args); end

    def add_option(*opts, &handler); end

    def arguments; end

    def begins?(long, short); end

    def command; end

    def defaults; end

    def defaults=(defaults); end

    def defaults_str; end

    def description; end

    def execute; end

    def get_all_gem_names; end

    def get_all_gem_names_and_versions; end

    def get_one_gem_name; end

    def get_one_optional_argument; end

    def handle_options(args); end

    def handles?(args); end

    def initialize(command, summary = T.unsafe(nil), defaults = T.unsafe(nil)); end

    def invoke(*args); end

    def invoke_with_build_args(args, build_args); end

    def merge_options(new_options); end

    def options; end

    def program_name; end

    def program_name=(program_name); end

    def remove_option(name); end

    def show_help; end

    def show_lookup_failure(gem_name, version, errors, domain, required_by = T.unsafe(nil)); end

    def summary; end

    def summary=(summary); end

    def usage; end

    def when_invoked(&block); end

    def self.add_common_option(*args, &handler); end

    def self.add_specific_extra_args(cmd, args); end

    def self.build_args; end

    def self.build_args=(value); end

    def self.common_options; end

    def self.extra_args; end

    def self.extra_args=(value); end

    def self.specific_extra_args(cmd); end

    def self.specific_extra_args_hash; end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end
  end

  module Commands
  end

  class ConfigFile
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    DEFAULT_BACKTRACE = T.let(nil, T.untyped)
    DEFAULT_BULK_THRESHOLD = T.let(nil, T.untyped)
    DEFAULT_CERT_EXPIRATION_LENGTH_DAYS = T.let(nil, T.untyped)
    DEFAULT_CONCURRENT_DOWNLOADS = T.let(nil, T.untyped)
    DEFAULT_UPDATE_SOURCES = T.let(nil, T.untyped)
    DEFAULT_VERBOSITY = T.let(nil, T.untyped)
    OPERATING_SYSTEM_DEFAULTS = T.let(nil, T.untyped)
    PLATFORM_DEFAULTS = T.let(nil, T.untyped)
    SYSTEM_CONFIG_PATH = T.let(nil, T.untyped)
    SYSTEM_WIDE_CONFIG_FILE = T.let(nil, T.untyped)

    def ==(other); end

    def [](key); end

    def []=(key, value); end

    def api_keys; end

    def args; end

    def backtrace; end

    def backtrace=(backtrace); end

    def bulk_threshold; end

    def bulk_threshold=(bulk_threshold); end

    def cert_expiration_length_days; end

    def cert_expiration_length_days=(cert_expiration_length_days); end

    def check_credentials_permissions; end

    def concurrent_downloads; end

    def concurrent_downloads=(concurrent_downloads); end

    def config_file_name; end

    def credentials_path; end

    def disable_default_gem_server; end

    def disable_default_gem_server=(disable_default_gem_server); end

    def each(&block); end

    def handle_arguments(arg_list); end

    def home; end

    def home=(home); end

    def initialize(args); end

    def load_api_keys; end

    def load_file(filename); end

    def path; end

    def path=(path); end

    def really_verbose; end

    def rubygems_api_key; end

    def rubygems_api_key=(api_key); end

    def set_api_key(host, api_key); end

    def sources; end

    def sources=(sources); end

    def ssl_ca_cert; end

    def ssl_ca_cert=(ssl_ca_cert); end

    def ssl_client_cert; end

    def ssl_verify_mode; end

    def to_yaml; end

    def unset_api_key!; end

    def update_sources; end

    def update_sources=(update_sources); end

    def verbose; end

    def verbose=(verbose); end

    def write; end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end
  end

  class ConflictError
    def conflicts; end

    def initialize(target, conflicts); end

    def target; end
  end

  class ConsoleUI
    def initialize; end
  end

  module DefaultUserInteraction
    include Gem::Text

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def self.ui; end

    def self.ui=(new_ui); end

    def self.use_ui(new_ui); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class Dependency
    def ==(other); end

    def ===(other); end

    def =~(other); end

    def all_sources; end

    def all_sources=(all_sources); end

    def encode_with(coder); end

    def eql?(other); end

    def groups; end

    def groups=(groups); end

    def initialize(name, *requirements); end

    def latest_version?; end

    def match?(obj, version = T.unsafe(nil), allow_prerelease = T.unsafe(nil)); end

    def matches_spec?(spec); end

    def matching_specs(platform_only = T.unsafe(nil)); end

    def merge(other); end

    def name; end

    def name=(name); end

    def prerelease=(prerelease); end

    def prerelease?; end

    def pretty_print(q); end

    def requirement; end

    def requirements_list; end

    def runtime?; end

    def source; end

    def source=(source); end

    def specific?; end

    def to_lock; end

    def to_spec; end

    def to_specs; end

    def to_yaml_properties; end

    def type; end
  end

  class DependencyInstaller
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::Deprecate
    DEFAULT_OPTIONS = T.let(nil, T.untyped)

    def _deprecated_add_found_dependencies(to_do, dependency_list); end

    def _deprecated_gather_dependencies; end

    def add_found_dependencies(*args, &block); end

    def available_set_for(dep_or_name, version); end

    def consider_local?; end

    def consider_remote?; end

    def document; end

    def errors; end

    def find_gems_with_sources(dep, best_only = T.unsafe(nil)); end

    def find_spec_by_name_and_version(gem_name, version = T.unsafe(nil), prerelease = T.unsafe(nil)); end

    def gather_dependencies(*args, &block); end

    def in_background(what); end

    def initialize(options = T.unsafe(nil)); end

    def install(dep_or_name, version = T.unsafe(nil)); end

    def install_development_deps; end

    def installed_gems; end

    def resolve_dependencies(dep_or_name, version); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end
  end

  class DependencyList
    include Enumerable
    include TSort
    Elem = type_member(fixed: T.untyped)

    def add(*gemspecs); end

    def clear; end

    def dependency_order; end

    def development; end

    def development=(development); end

    def each(&block); end

    def find_name(full_name); end

    def initialize(development = T.unsafe(nil)); end

    def ok?; end

    def ok_to_remove?(full_name, check_dev = T.unsafe(nil)); end

    def remove_by_name(full_name); end

    def remove_specs_unsatisfied_by(dependencies); end

    def spec_predecessors; end

    def specs; end

    def tsort_each_node(&block); end

    def why_not_ok?(quick = T.unsafe(nil)); end

    def self.from_specs; end
  end

  class DependencyResolutionError
    def conflict; end

    def conflicting_dependencies; end

    def initialize(conflict); end
  end

  module Deprecate
    def self.deprecate(name, repl, year, month); end

    def self.skip; end

    def self.skip=(v); end

    def self.skip_during; end
  end

  class Exception
    extend Gem::Deprecate

    def _deprecated_source_exception; end

    def source_exception(*args, &block); end

    def source_exception=(source_exception); end
  end

  module Ext
    class BuildError
    end

    class Builder
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text
      CHDIR_MONITOR = T.let(nil, T.untyped)
      CHDIR_MUTEX = T.let(nil, T.untyped)

      def build_args; end

      def build_args=(build_args); end

      def build_error(build_dir, output, backtrace = T.unsafe(nil)); end

      def build_extension(extension, dest_path); end

      def build_extensions; end

      def builder_for(extension); end

      def initialize(spec, build_args = T.unsafe(nil)); end

      def write_gem_make_out(output); end

      def self.class_name; end

      def self.make(dest_path, results); end

      def self.redirector; end

      def self.run(command, results, command_name = T.unsafe(nil)); end

      def clean_text(text); end

      def format_text(text, wrap, indent = T.unsafe(nil)); end

      def levenshtein_distance(str1, str2); end

      def min3(a, b, c); end

      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      def ui; end

      def ui=(new_ui); end

      def use_ui(new_ui, &block); end

      def alert(statement, question = T.unsafe(nil)); end

      def alert_error(statement, question = T.unsafe(nil)); end

      def alert_warning(statement, question = T.unsafe(nil)); end

      def ask(question); end

      def ask_for_password(prompt); end

      def ask_yes_no(question, default = T.unsafe(nil)); end

      def choose_from_list(question, list); end

      def say(statement = T.unsafe(nil)); end

      def terminate_interaction(exit_code = T.unsafe(nil)); end

      def verbose(msg = T.unsafe(nil)); end
    end

    class CmakeBuilder
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end

    class ConfigureBuilder
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end

    class ExtConfBuilder
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end

      def self.get_relative_path(path); end
    end

    class RakeBuilder
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end
  end

  class FilePermissionError
    def directory; end

    def initialize(directory); end
  end

  class FormatException
    def file_path; end

    def file_path=(file_path); end
  end

  class GemNotInHomeException
    def spec; end

    def spec=(spec); end
  end

  class ImpossibleDependenciesError
    def build_message; end

    def conflicts; end

    def dependency; end

    def initialize(request, conflicts); end

    def request; end
  end

  class Installer
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::Deprecate
    ENV_PATHS = T.let(nil, T.untyped)

    def _deprecated_extension_build_error(build_dir, output, backtrace = T.unsafe(nil)); end

    def app_script_text(bin_file_name); end

    def bin_dir; end

    def build_extensions; end

    def build_root; end

    def check_executable_overwrite(filename); end

    def check_that_user_bin_dir_is_in_path; end

    def default_spec_file; end

    def dir; end

    def ensure_dependencies_met; end

    def ensure_dependency(spec, dependency); end

    def ensure_loadable_spec; end

    def ensure_required_ruby_version_met; end

    def ensure_required_rubygems_version_met; end

    def extension_build_error(*args, &block); end

    def extract_bin; end

    def extract_files; end

    def formatted_program_filename(filename); end

    def gem; end

    def gem_dir; end

    def gem_home; end

    def generate_bin; end

    def generate_bin_script(filename, bindir); end

    def generate_bin_symlink(filename, bindir); end

    def generate_windows_script(filename, bindir); end

    def initialize(package, options = T.unsafe(nil)); end

    def install; end

    def installation_satisfies_dependency?(dependency); end

    def installed_specs; end

    def options; end

    def pre_install_checks; end

    def process_options; end

    def run_post_build_hooks; end

    def run_post_install_hooks; end

    def run_pre_install_hooks; end

    def shebang(bin_file_name); end

    def spec; end

    def spec_file; end

    def unpack(directory); end

    def verify_gem_home(unpack = T.unsafe(nil)); end

    def verify_spec; end

    def windows_stub_script(bindir, bin_file_name); end

    def write_build_info_file; end

    def write_cache_file; end

    def write_default_spec; end

    def write_spec; end

    def self.at(path, options = T.unsafe(nil)); end

    def self.exec_format; end

    def self.exec_format=(exec_format); end

    def self.for_spec(spec, options = T.unsafe(nil)); end

    def self.install_lock; end

    def self.path_warning; end

    def self.path_warning=(path_warning); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end
  end

  class Licenses
    extend Gem::Text
    EXCEPTION_IDENTIFIERS = T.let(nil, T.untyped)
    LICENSE_IDENTIFIERS = T.let(nil, T.untyped)
    NONSTANDARD = T.let(nil, T.untyped)
    REGEXP = T.let(nil, T.untyped)

    def self.match?(license); end

    def self.suggestions(license); end

    def self.clean_text(text); end

    def self.format_text(text, wrap, indent = T.unsafe(nil)); end

    def self.levenshtein_distance(str1, str2); end

    def self.min3(a, b, c); end

    def self.truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class List
    def each(&blk); end

    def initialize(value = T.unsafe(nil), tail = T.unsafe(nil)); end

    def prepend(value); end

    def pretty_print(q); end

    def tail; end

    def tail=(tail); end

    def to_a; end

    def value; end

    def value=(value); end

    def self.prepend(list, value); end
  end

  class LoadError
    def name; end

    def name=(name); end

    def requirement; end

    def requirement=(requirement); end
  end

  class MissingSpecError
    def initialize(name, requirement); end
  end

  class MissingSpecVersionError
    def initialize(name, requirement, specs); end

    def specs; end
  end

  class NameTuple
    include Comparable

    def ==(other); end

    def eql?(other); end

    def full_name; end

    def initialize(name, version, platform = T.unsafe(nil)); end

    def match_platform?; end

    def name; end

    def platform; end

    def prerelease?; end

    def spec_name; end

    def to_a; end

    def version; end

    def self.from_list(list); end

    def self.null; end

    def self.to_basic(list); end
  end

  class Package
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    def add_checksums(tar); end

    def add_contents(tar); end

    def add_files(tar); end

    def add_metadata(tar); end

    def build(skip_validation = T.unsafe(nil), strict_validation = T.unsafe(nil)); end

    def build_time; end

    def build_time=(build_time); end

    def checksums; end

    def contents; end

    def copy_to(path); end

    def data_mode; end

    def data_mode=(data_mode); end

    def digest(entry); end

    def dir_mode; end

    def dir_mode=(dir_mode); end

    def extract_files(destination_dir, pattern = T.unsafe(nil)); end

    def extract_tar_gz(io, destination_dir, pattern = T.unsafe(nil)); end

    def file_mode(mode); end

    def files; end

    def gzip_to(io); end

    def initialize(gem, security_policy); end

    def install_location(filename, destination_dir); end

    def load_spec(entry); end

    def mkdir_p_safe(mkdir, mkdir_options, destination_dir, file_name); end

    def normalize_path(pathname); end

    def open_tar_gz(io); end

    def prog_mode; end

    def prog_mode=(prog_mode); end

    def read_checksums(gem); end

    def security_policy; end

    def security_policy=(security_policy); end

    def setup_signer(signer_options: T.unsafe(nil)); end

    def spec; end

    def spec=(spec); end

    def verify; end

    def verify_checksums(digests, checksums); end

    def verify_entry(entry); end

    def verify_files(gem); end

    def verify_gz(entry); end

    def self.build(spec, skip_validation = T.unsafe(nil), strict_validation = T.unsafe(nil), file_name = T.unsafe(nil)); end

    def self.new(gem, security_policy = T.unsafe(nil)); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end

    class DigestIO
      def digests; end

      def initialize(io, digests); end

      def write(data); end

      def self.wrap(io, digests); end
    end

    class Error
    end

    class FileSource
      def initialize(path); end

      def path; end

      def present?; end

      def start; end

      def with_read_io(&block); end

      def with_write_io(&block); end
    end

    class FormatError
      def initialize(message, source = T.unsafe(nil)); end

      def path; end
    end

    class IOSource
      def initialize(io); end

      def io; end

      def path; end

      def present?; end

      def start; end

      def with_read_io; end

      def with_write_io; end
    end

    class NonSeekableIO
    end

    class Old
      def extract_files(destination_dir); end

      def file_list(io); end

      def read_until_dashes(io); end

      def skip_ruby(io); end
    end

    class PathError
      def initialize(destination, destination_dir); end
    end

    class Source
    end

    class TarHeader
      EMPTY_HEADER = T.let(nil, T.untyped)
      FIELDS = T.let(nil, T.untyped)
      PACK_FORMAT = T.let(nil, T.untyped)
      UNPACK_FORMAT = T.let(nil, T.untyped)

      def ==(other); end

      def checksum; end

      def devmajor; end

      def devminor; end

      def empty?; end

      def gid; end

      def gname; end

      def initialize(vals); end

      def linkname; end

      def magic; end

      def mode; end

      def mtime; end

      def name; end

      def prefix; end

      def size; end

      def typeflag; end

      def uid; end

      def uname; end

      def update_checksum; end

      def version; end

      def self.from(stream); end

      def self.strict_oct(str); end
    end

    class TarInvalidError
    end

    class TarReader
      include Enumerable
      Elem = type_member(fixed: T.untyped)

      def close; end

      def each(&blk); end

      def each_entry; end

      def initialize(io); end

      def rewind; end

      def seek(name); end

      def self.new(io); end

      class Entry
        def bytes_read; end

        def check_closed; end

        def close; end

        def closed?; end

        def directory?; end

        def eof?; end

        def file?; end

        def full_name; end

        def getc; end

        def header; end

        def initialize(header, io); end

        def length; end

        def pos; end

        def read(len = T.unsafe(nil)); end

        def readpartial(maxlen = T.unsafe(nil), outbuf = T.unsafe(nil)); end

        def rewind; end

        def size; end

        def symlink?; end
      end

      class UnexpectedEOF
      end
    end

    class TarWriter
      def add_file(name, mode); end

      def add_file_digest(name, mode, digest_algorithms); end

      def add_file_signed(name, mode, signer); end

      def add_file_simple(name, mode, size); end

      def add_symlink(name, target, mode); end

      def check_closed; end

      def close; end

      def closed?; end

      def flush; end

      def initialize(io); end

      def mkdir(name, mode); end

      def split_name(name); end

      def self.new(io); end

      class BoundedStream
        def initialize(io, limit); end

        def limit; end

        def write(data); end

        def written; end
      end

      class FileOverflow
      end

      class RestrictedStream
        def initialize(io); end

        def write(data); end
      end
    end

    class TooLongFileName
    end
  end

  class PathSupport
    def home; end

    def initialize(env); end

    def path; end

    def spec_cache_dir; end
  end

  class Platform
    JAVA = T.let(nil, T.untyped)
    MINGW = T.let(nil, T.untyped)
    MSWIN = T.let(nil, T.untyped)
    MSWIN64 = T.let(nil, T.untyped)
    X64_MINGW = T.let(nil, T.untyped)

    def ==(other); end

    def ===(other); end

    def =~(other); end

    def cpu; end

    def cpu=(cpu); end

    def eql?(other); end

    def initialize(arch); end

    def os; end

    def os=(os); end

    def to_a; end

    def version; end

    def version=(version); end

    def self.installable?(spec); end

    def self.local; end

    def self.match(platform); end

    def self.new(arch); end
  end

  class PlatformMismatch
    def add_platform(platform); end

    def initialize(name, version); end

    def name; end

    def platforms; end

    def version; end

    def wordy; end
  end

  class RemoteFetcher
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    BASE64_URI_TRANSLATE = T.let(nil, T.untyped)

    def cache_update_path(uri, path = T.unsafe(nil), update = T.unsafe(nil)); end

    def close_all; end

    def correct_for_windows_path(path); end

    def download(spec, source_uri, install_dir = T.unsafe(nil)); end

    def download_to_cache(dependency); end

    def fetch_file(uri, *_); end

    def fetch_http(uri, last_modified = T.unsafe(nil), head = T.unsafe(nil), depth = T.unsafe(nil)); end

    def fetch_https(uri, last_modified = T.unsafe(nil), head = T.unsafe(nil), depth = T.unsafe(nil)); end

    def fetch_path(uri, mtime = T.unsafe(nil), head = T.unsafe(nil)); end

    def fetch_s3(uri, mtime = T.unsafe(nil), head = T.unsafe(nil)); end

    def fetch_size(uri); end

    def headers; end

    def headers=(headers); end

    def https?(uri); end

    def initialize(proxy = T.unsafe(nil), dns = T.unsafe(nil), headers = T.unsafe(nil)); end

    def request(uri, request_class, last_modified = T.unsafe(nil)); end

    def s3_expiration; end

    def sign_s3_url(uri, expiration = T.unsafe(nil)); end

    def self.fetcher; end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end
  end

  class Request
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::UserInteraction
    extend Gem::DefaultUserInteraction
    extend Gem::Text

    def cert_files; end

    def connection_for(uri); end

    def fetch; end

    def initialize(uri, request_class, last_modified, pool); end

    def perform_request(request); end

    def proxy_uri; end

    def reset(connection); end

    def user_agent; end

    def self.configure_connection_for_https(connection, cert_files); end

    def self.create_with_proxy(uri, request_class, last_modified, proxy); end

    def self.get_cert_files; end

    def self.get_proxy_from_env(scheme = T.unsafe(nil)); end

    def self.proxy_uri(proxy); end

    def self.verify_certificate(store_context); end

    def self.verify_certificate_message(error_number, cert); end

    def self.clean_text(text); end

    def self.format_text(text, wrap, indent = T.unsafe(nil)); end

    def self.levenshtein_distance(str1, str2); end

    def self.min3(a, b, c); end

    def self.truncate_text(text, description, max_length = T.unsafe(nil)); end

    def self.ui; end

    def self.ui=(new_ui); end

    def self.use_ui(new_ui, &block); end

    def self.alert(statement, question = T.unsafe(nil)); end

    def self.alert_error(statement, question = T.unsafe(nil)); end

    def self.alert_warning(statement, question = T.unsafe(nil)); end

    def self.ask(question); end

    def self.ask_for_password(prompt); end

    def self.ask_yes_no(question, default = T.unsafe(nil)); end

    def self.choose_from_list(question, list); end

    def self.say(statement = T.unsafe(nil)); end

    def self.terminate_interaction(exit_code = T.unsafe(nil)); end

    def self.verbose(msg = T.unsafe(nil)); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end

    class ConnectionPools
      def close_all; end

      def initialize(proxy_uri, cert_files); end

      def pool_for(uri); end

      def self.client; end

      def self.client=(client); end
    end

    class HTTPPool
      def cert_files; end

      def checkin(connection); end

      def checkout; end

      def close_all; end

      def initialize(http_args, cert_files, proxy_uri); end

      def proxy_uri; end
    end

    class HTTPSPool
    end
  end

  class RequestSet
    include TSort

    def always_install; end

    def always_install=(always_install); end

    def dependencies; end

    def development; end

    def development=(development); end

    def development_shallow; end

    def development_shallow=(development_shallow); end

    def errors; end

    def gem(name, *reqs); end

    def git_set; end

    def ignore_dependencies; end

    def ignore_dependencies=(ignore_dependencies); end

    def import(deps); end

    def initialize(*deps); end

    def install(options, &block); end

    def install_dir; end

    def install_from_gemdeps(options, &block); end

    def install_hooks(requests, options); end

    def install_into(dir, force = T.unsafe(nil), options = T.unsafe(nil)); end

    def load_gemdeps(path, without_groups = T.unsafe(nil), installing = T.unsafe(nil)); end

    def prerelease; end

    def prerelease=(prerelease); end

    def pretty_print(q); end

    def remote; end

    def remote=(remote); end

    def resolve(set = T.unsafe(nil)); end

    def resolve_current; end

    def resolver; end

    def sets; end

    def soft_missing; end

    def soft_missing=(soft_missing); end

    def sorted_requests; end

    def source_set; end

    def specs; end

    def specs_in(dir); end

    def tsort_each_node(&block); end

    def vendor_set; end

    class GemDependencyAPI
      ENGINE_MAP = T.let(nil, T.untyped)
      PLATFORM_MAP = T.let(nil, T.untyped)
      VERSION_MAP = T.let(nil, T.untyped)
      WINDOWS = T.let(nil, T.untyped)

      def dependencies; end

      def find_gemspec(name, path); end

      def gem(name, *requirements); end

      def gem_deps_file; end

      def gem_git_reference(options); end

      def gemspec(options = T.unsafe(nil)); end

      def git(repository); end

      def git_set; end

      def git_source(name, &callback); end

      def group(*groups); end

      def initialize(set, path); end

      def installing=(installing); end

      def load; end

      def platform(*platforms); end

      def platforms(*platforms); end

      def requires; end

      def ruby(version, options = T.unsafe(nil)); end

      def source(url); end

      def vendor_set; end

      def without_groups; end

      def without_groups=(without_groups); end
    end

    class Lockfile
      def add_DEPENDENCIES(out); end

      def add_GEM(out, spec_groups); end

      def add_GIT(out, git_requests); end

      def add_PATH(out, path_requests); end

      def add_PLATFORMS(out); end

      def initialize(request_set, gem_deps_file, dependencies); end

      def platforms; end

      def relative_path_from(dest, base); end

      def spec_groups; end

      def write; end

      def self.build(request_set, gem_deps_file, dependencies = T.unsafe(nil)); end

      def self.requests_to_deps(requests); end

      class ParseError
        def column; end

        def initialize(message, column, line, path); end

        def line; end

        def path; end
      end

      class Parser
        def get(expected_types = T.unsafe(nil), expected_value = T.unsafe(nil)); end

        def initialize(tokenizer, set, platforms, filename = T.unsafe(nil)); end

        def parse; end

        def parse_DEPENDENCIES; end

        def parse_GEM; end

        def parse_GIT; end

        def parse_PATH; end

        def parse_PLATFORMS; end

        def parse_dependency(name, op); end
      end

      class Tokenizer
        EOF = T.let(nil, T.untyped)

        def empty?; end

        def initialize(input, filename = T.unsafe(nil), line = T.unsafe(nil), pos = T.unsafe(nil)); end

        def make_parser(set, platforms); end

        def next_token; end

        def peek; end

        def shift; end

        def skip(type); end

        def to_a; end

        def token_pos(byte_offset); end

        def unshift(token); end

        def self.from_file(file); end

        class Token
          def column; end

          def column=(_); end

          def line; end

          def line=(_); end

          def type; end

          def type=(_); end

          def value; end

          def value=(_); end

          def self.[](*_); end

          def self.members; end
        end
      end
    end
  end

  class Requirement
    DefaultRequirement = T.let(nil, T.untyped)

    def ==(other); end

    def ===(version); end

    def =~(version); end

    def _tilde_requirements; end

    def as_list; end

    def concat(new); end

    def encode_with(coder); end

    def exact?; end

    def for_lockfile; end

    def init_with(coder); end

    def initialize(*requirements); end

    def marshal_dump; end

    def marshal_load(array); end

    def none?; end

    def prerelease?; end

    def pretty_print(q); end

    def requirements; end

    def satisfied_by?(version); end

    def specific?; end

    def to_yaml_properties; end

    def yaml_initialize(tag, vals); end

    def self.create(*inputs); end

    def self.default; end

    def self.parse(obj); end

    def self.source_set; end
  end

  class Resolver
    include Gem::Resolver::Molinillo::UI
    include Gem::Resolver::Molinillo::SpecificationProvider
    DEBUG_RESOLVER = T.let(nil, T.untyped)

    def activation_request(dep, possible); end

    def development; end

    def development=(development); end

    def development_shallow; end

    def development_shallow=(development_shallow); end

    def explain(stage, *data); end

    def explain_list(stage); end

    def find_possible(dependency); end

    def ignore_dependencies; end

    def ignore_dependencies=(ignore_dependencies); end

    def initialize(needed, set = T.unsafe(nil)); end

    def missing; end

    def requests(s, act, reqs = T.unsafe(nil)); end

    def resolve; end

    def select_local_platforms(specs); end

    def skip_gems; end

    def skip_gems=(skip_gems); end

    def soft_missing; end

    def soft_missing=(soft_missing); end

    def stats; end

    def self.compose_sets(*sets); end

    def self.for_current_gems(needed); end

    def allow_missing?(dependency); end

    def dependencies_for(specification); end

    def name_for(dependency); end

    def name_for_explicit_dependency_source; end

    def name_for_locking_dependency_source; end

    def requirement_satisfied_by?(requirement, activated, spec); end

    def search_for(dependency); end

    def sort_dependencies(dependencies, activated, conflicts); end

    def after_resolution; end

    def before_resolution; end

    def debug(depth = T.unsafe(nil)); end

    def debug?; end

    def indicate_progress; end

    def output; end

    def progress_rate; end

    class APISet
      def dep_uri; end

      def initialize(dep_uri = T.unsafe(nil)); end

      def prefetch_now; end

      def pretty_print(q); end

      def source; end

      def uri; end

      def versions(name); end
    end

    class APISpecification
      def ==(other); end

      def initialize(set, api_data); end

      def pretty_print(q); end
    end

    class ActivationRequest
      def ==(other); end

      def development?; end

      def download(path); end

      def full_name; end

      def full_spec; end

      def initialize(spec, request, others_possible = T.unsafe(nil)); end

      def installed?; end

      def name; end

      def others_possible?; end

      def parent; end

      def pretty_print(q); end

      def request; end

      def spec; end

      def version; end
    end

    class BestSet
      def initialize(sources = T.unsafe(nil)); end

      def pick_sets; end

      def pretty_print(q); end

      def replace_failed_api_set(error); end
    end

    class ComposedSet
      def initialize(*sets); end

      def prerelease=(allow_prerelease); end

      def remote=(remote); end

      def sets; end
    end

    class Conflict
      def ==(other); end

      def activated; end

      def conflicting_dependencies; end

      def dependency; end

      def explain; end

      def explanation; end

      def failed_dep; end

      def for_spec?(spec); end

      def initialize(dependency, activated, failed_dep = T.unsafe(nil)); end

      def pretty_print(q); end

      def request_path(current); end

      def requester; end
    end

    class CurrentSet
    end

    class DependencyRequest
      def ==(other); end

      def dependency; end

      def development?; end

      def explicit?; end

      def implicit?; end

      def initialize(dependency, requester); end

      def match?(spec, allow_prerelease = T.unsafe(nil)); end

      def matches_spec?(spec); end

      def name; end

      def pretty_print(q); end

      def request_context; end

      def requester; end

      def requirement; end

      def type; end
    end

    class GitSet
      def add_git_gem(name, repository, reference, submodules); end

      def add_git_spec(name, version, repository, reference, submodules); end

      def need_submodules; end

      def pretty_print(q); end

      def repositories; end

      def root_dir; end

      def root_dir=(root_dir); end

      def specs; end
    end

    class GitSpecification
      def ==(other); end

      def add_dependency(dependency); end

      def pretty_print(q); end
    end

    class IndexSet
      def initialize(source = T.unsafe(nil)); end

      def pretty_print(q); end
    end

    class IndexSpecification
      def initialize(set, name, version, source, platform); end

      def pretty_print(q); end
    end

    class InstalledSpecification
      def ==(other); end

      def pretty_print(q); end
    end

    class InstallerSet
      def add_always_install(dependency); end

      def add_local(dep_name, spec, source); end

      def always_install; end

      def consider_local?; end

      def consider_remote?; end

      def ignore_dependencies; end

      def ignore_dependencies=(ignore_dependencies); end

      def ignore_installed; end

      def ignore_installed=(ignore_installed); end

      def initialize(domain); end

      def load_spec(name, ver, platform, source); end

      def local?(dep_name); end

      def prerelease=(allow_prerelease); end

      def pretty_print(q); end

      def remote=(remote); end

      def remote_set; end
    end

    class LocalSpecification
      def pretty_print(q); end
    end

    class LockSet
      def add(name, version, platform); end

      def initialize(sources); end

      def load_spec(name, version, platform, source); end

      def pretty_print(q); end

      def specs; end
    end

    class LockSpecification
      def add_dependency(dependency); end

      def initialize(set, name, version, sources, platform); end

      def pretty_print(q); end

      def sources; end
    end

    module Molinillo
      VERSION = T.let(nil, T.untyped)

      class CircularDependencyError
        def dependencies; end

        def initialize(nodes); end
      end

      module Delegates
        module ResolutionState
          def activated; end

          def conflicts; end

          def depth; end

          def name; end

          def possibilities; end

          def requirement; end

          def requirements; end
        end

        module SpecificationProvider
          def allow_missing?(dependency); end

          def dependencies_for(specification); end

          def name_for(dependency); end

          def name_for_explicit_dependency_source; end

          def name_for_locking_dependency_source; end

          def requirement_satisfied_by?(requirement, activated, spec); end

          def search_for(dependency); end

          def sort_dependencies(dependencies, activated, conflicts); end
        end
      end

      class DependencyGraph
        include Enumerable
        include TSort
        Elem = type_member(fixed: T.untyped)

        def ==(other); end

        def add_child_vertex(name, payload, parent_names, requirement); end

        def add_edge(origin, destination, requirement); end

        def add_vertex(name, payload, root = T.unsafe(nil)); end

        def delete_edge(edge); end

        def detach_vertex_named(name); end

        def each(&blk); end

        def log; end

        def rewind_to(tag); end

        def root_vertex_named(name); end

        def set_payload(name, payload); end

        def tag(tag); end

        def to_dot(options = T.unsafe(nil)); end

        def tsort_each_child(vertex, &block); end

        def vertex_named(name); end

        def vertices; end

        def self.tsort(vertices); end

        class Action
          def down(graph); end

          def next; end

          def next=(_); end

          def previous; end

          def previous=(previous); end

          def up(graph); end

          def self.action_name; end
        end

        class AddEdgeNoCircular
          def destination; end

          def initialize(origin, destination, requirement); end

          def make_edge(graph); end

          def origin; end

          def requirement; end
        end

        class AddVertex
          def initialize(name, payload, root); end

          def name; end

          def payload; end

          def root; end
        end

        class DeleteEdge
          def destination_name; end

          def initialize(origin_name, destination_name, requirement); end

          def make_edge(graph); end

          def origin_name; end

          def requirement; end
        end

        class DetachVertexNamed
          def initialize(name); end

          def name; end
        end

        class Edge
          def destination; end

          def destination=(_); end

          def origin; end

          def origin=(_); end

          def requirement; end

          def requirement=(_); end

          def self.[](*_); end

          def self.members; end
        end

        class Log
          extend T::Enumerable
          Elem = type_member(fixed: T.untyped)

          def add_edge_no_circular(graph, origin, destination, requirement); end

          def add_vertex(graph, name, payload, root); end

          def delete_edge(graph, origin_name, destination_name, requirement); end

          def detach_vertex_named(graph, name); end

          def each(&blk); end

          def pop!(graph); end

          def reverse_each; end

          def rewind_to(graph, tag); end

          def set_payload(graph, name, payload); end

          def tag(graph, tag); end
        end

        class SetPayload
          def initialize(name, payload); end

          def name; end

          def payload; end
        end

        class Tag
          def down(_graph); end

          def initialize(tag); end

          def tag; end

          def up(_graph); end
        end

        class Vertex
          def ==(other); end

          def ancestor?(other); end

          def descendent?(other); end

          def eql?(other); end

          def explicit_requirements; end

          def incoming_edges; end

          def incoming_edges=(incoming_edges); end

          def initialize(name, payload); end

          def is_reachable_from?(other); end

          def name; end

          def name=(name); end

          def outgoing_edges; end

          def outgoing_edges=(outgoing_edges); end

          def path_to?(other); end

          def payload; end

          def payload=(payload); end

          def predecessors; end

          def recursive_predecessors; end

          def recursive_successors; end

          def requirements; end

          def root; end

          def root=(root); end

          def root?; end

          def shallow_eql?(other); end

          def successors; end
        end
      end

      class DependencyState
        def pop_possibility_state; end
      end

      class NoSuchDependencyError
        def dependency; end

        def dependency=(dependency); end

        def initialize(dependency, required_by = T.unsafe(nil)); end

        def required_by; end

        def required_by=(required_by); end
      end

      class PossibilityState
      end

      class ResolutionState
        def activated; end

        def activated=(_); end

        def conflicts; end

        def conflicts=(_); end

        def depth; end

        def depth=(_); end

        def name; end

        def name=(_); end

        def possibilities; end

        def possibilities=(_); end

        def requirement; end

        def requirement=(_); end

        def requirements; end

        def requirements=(_); end

        def self.[](*_); end

        def self.empty; end

        def self.members; end
      end

      class Resolver
        def initialize(specification_provider, resolver_ui); end

        def resolve(requested, base = T.unsafe(nil)); end

        def resolver_ui; end

        def specification_provider; end

        class Resolution
          include Gem::Resolver::Molinillo::Delegates::ResolutionState
          include Gem::Resolver::Molinillo::Delegates::SpecificationProvider

          def base; end

          def initialize(specification_provider, resolver_ui, requested, base); end

          def iteration_rate=(iteration_rate); end

          def original_requested; end

          def resolve; end

          def resolver_ui; end

          def specification_provider; end

          def started_at=(started_at); end

          def states=(states); end

          def allow_missing?(dependency); end

          def dependencies_for(specification); end

          def name_for(dependency); end

          def name_for_explicit_dependency_source; end

          def name_for_locking_dependency_source; end

          def requirement_satisfied_by?(requirement, activated, spec); end

          def search_for(dependency); end

          def sort_dependencies(dependencies, activated, conflicts); end

          def activated; end

          def conflicts; end

          def depth; end

          def name; end

          def possibilities; end

          def requirement; end

          def requirements; end

          class Conflict
            def activated_by_name; end

            def activated_by_name=(_); end

            def existing; end

            def existing=(_); end

            def locked_requirement; end

            def locked_requirement=(_); end

            def possibility; end

            def possibility=(_); end

            def requirement; end

            def requirement=(_); end

            def requirement_trees; end

            def requirement_trees=(_); end

            def requirements; end

            def requirements=(_); end

            def self.[](*_); end

            def self.members; end
          end
        end
      end

      class ResolverError
      end

      module SpecificationProvider
        def allow_missing?(dependency); end

        def dependencies_for(specification); end

        def name_for(dependency); end

        def name_for_explicit_dependency_source; end

        def name_for_locking_dependency_source; end

        def requirement_satisfied_by?(requirement, activated, spec); end

        def search_for(dependency); end

        def sort_dependencies(dependencies, activated, conflicts); end
      end

      module UI
        def after_resolution; end

        def before_resolution; end

        def debug(depth = T.unsafe(nil)); end

        def debug?; end

        def indicate_progress; end

        def output; end

        def progress_rate; end
      end

      class VersionConflict
        def conflicts; end

        def initialize(conflicts); end
      end
    end

    class RequirementList
      include Enumerable
      Elem = type_member(fixed: T.untyped)

      def add(req); end

      def each(&blk); end

      def empty?; end

      def next5; end

      def remove; end

      def size; end
    end

    class Set
      def errors; end

      def errors=(errors); end

      def find_all(req); end

      def prefetch(reqs); end

      def prerelease; end

      def prerelease=(prerelease); end

      def remote; end

      def remote=(remote); end

      def remote?; end
    end

    class SourceSet
      def add_source_gem(name, source); end
    end

    class SpecSpecification
      def initialize(set, spec, source = T.unsafe(nil)); end
    end

    class Specification
      def dependencies; end

      def download(options); end

      def fetch_development_dependencies; end

      def full_name; end

      def install(options = T.unsafe(nil)); end

      def installable_platform?; end

      def local?; end

      def name; end

      def platform; end

      def set; end

      def source; end

      def spec; end

      def version; end
    end

    class Stats
      PATTERN = T.let(nil, T.untyped)

      def backtracking!; end

      def display; end

      def iteration!; end

      def record_depth(stack); end

      def record_requirements(reqs); end

      def requirement!; end
    end

    class VendorSet
      def add_vendor_gem(name, directory); end

      def load_spec(name, version, platform, source); end

      def pretty_print(q); end

      def specs; end
    end

    class VendorSpecification
      def ==(other); end
    end
  end

  class RuntimeRequirementNotMetError
    def suggestion; end

    def suggestion=(suggestion); end
  end

  module Security
    AlmostNoSecurity = T.let(nil, T.untyped)
    DIGEST_NAME = T.let(nil, T.untyped)
    EXTENSIONS = T.let(nil, T.untyped)
    HighSecurity = T.let(nil, T.untyped)
    KEY_CIPHER = T.let(nil, T.untyped)
    KEY_LENGTH = T.let(nil, T.untyped)
    LowSecurity = T.let(nil, T.untyped)
    MediumSecurity = T.let(nil, T.untyped)
    NoSecurity = T.let(nil, T.untyped)
    ONE_DAY = T.let(nil, T.untyped)
    ONE_YEAR = T.let(nil, T.untyped)
    Policies = T.let(nil, T.untyped)
    SigningPolicy = T.let(nil, T.untyped)

    def self.alt_name_or_x509_entry(certificate, x509_entry); end

    def self.create_cert(subject, key, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    def self.create_cert_email(email, key, age = T.unsafe(nil), extensions = T.unsafe(nil)); end

    def self.create_cert_self_signed(subject, key, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    def self.create_key(length = T.unsafe(nil), algorithm = T.unsafe(nil)); end

    def self.email_to_name(email_address); end

    def self.re_sign(expired_certificate, private_key, age = T.unsafe(nil), extensions = T.unsafe(nil)); end

    def self.reset; end

    def self.sign(certificate, signing_key, signing_cert, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    def self.trust_dir; end

    def self.trusted_certificates(&block); end

    def self.write(pemmable, path, permissions = T.unsafe(nil), passphrase = T.unsafe(nil), cipher = T.unsafe(nil)); end

    class DIGEST_ALGORITHM
      def initialize(data = T.unsafe(nil)); end

      def self.digest(data); end

      def self.hexdigest(data); end
    end

    class Exception
    end

    class KEY_ALGORITHM
      NO_PADDING = T.let(nil, T.untyped)
      PKCS1_OAEP_PADDING = T.let(nil, T.untyped)
      PKCS1_PADDING = T.let(nil, T.untyped)
      SSLV23_PADDING = T.let(nil, T.untyped)

      def d; end

      def d=(d); end

      def dmp1; end

      def dmp1=(dmp1); end

      def dmq1; end

      def dmq1=(dmq1); end

      def e; end

      def e=(e); end

      def export(*_); end

      def initialize(*_); end

      def iqmp; end

      def iqmp=(iqmp); end

      def n; end

      def n=(n); end

      def p; end

      def p=(p); end

      def params; end

      def private?; end

      def private_decrypt(*_); end

      def private_encrypt(*_); end

      def public?; end

      def public_decrypt(*_); end

      def public_encrypt(*_); end

      def public_key; end

      def q; end

      def q=(q); end

      def set_crt_params(_, _1, _2); end

      def set_factors(_, _1); end

      def set_key(_, _1, _2); end

      def sign_pss(*_); end

      def to_der; end

      def to_pem(*_); end

      def to_s(*_); end

      def to_text; end

      def verify_pss(*_); end

      def self.generate(*_); end
    end

    class Policy
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text

      def check_cert(signer, issuer, time); end

      def check_chain(chain, time); end

      def check_data(public_key, digest, signature, data); end

      def check_key(signer, key); end

      def check_root(chain, time); end

      def check_trust(chain, digester, trust_dir); end

      def initialize(name, policy = T.unsafe(nil), opt = T.unsafe(nil)); end

      def name; end

      def only_signed; end

      def only_signed=(only_signed); end

      def only_trusted; end

      def only_trusted=(only_trusted); end

      def subject(certificate); end

      def verify(chain, key = T.unsafe(nil), digests = T.unsafe(nil), signatures = T.unsafe(nil), full_name = T.unsafe(nil)); end

      def verify_chain; end

      def verify_chain=(verify_chain); end

      def verify_data; end

      def verify_data=(verify_data); end

      def verify_root; end

      def verify_root=(verify_root); end

      def verify_signatures(spec, digests, signatures); end

      def verify_signer; end

      def verify_signer=(verify_signer); end

      def clean_text(text); end

      def format_text(text, wrap, indent = T.unsafe(nil)); end

      def levenshtein_distance(str1, str2); end

      def min3(a, b, c); end

      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      def ui; end

      def ui=(new_ui); end

      def use_ui(new_ui, &block); end

      def alert(statement, question = T.unsafe(nil)); end

      def alert_error(statement, question = T.unsafe(nil)); end

      def alert_warning(statement, question = T.unsafe(nil)); end

      def ask(question); end

      def ask_for_password(prompt); end

      def ask_yes_no(question, default = T.unsafe(nil)); end

      def choose_from_list(question, list); end

      def say(statement = T.unsafe(nil)); end

      def terminate_interaction(exit_code = T.unsafe(nil)); end

      def verbose(msg = T.unsafe(nil)); end
    end

    class Signer
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text
      DEFAULT_OPTIONS = T.let(nil, T.untyped)

      def cert_chain; end

      def cert_chain=(cert_chain); end

      def digest_algorithm; end

      def digest_name; end

      def extract_name(cert); end

      def initialize(key, cert_chain, passphrase = T.unsafe(nil), options = T.unsafe(nil)); end

      def key; end

      def key=(key); end

      def load_cert_chain; end

      def options; end

      def re_sign_key(expiration_length: T.unsafe(nil)); end

      def sign(data); end

      def self.re_sign_cert(expired_cert, expired_cert_path, private_key); end

      def clean_text(text); end

      def format_text(text, wrap, indent = T.unsafe(nil)); end

      def levenshtein_distance(str1, str2); end

      def min3(a, b, c); end

      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      def ui; end

      def ui=(new_ui); end

      def use_ui(new_ui, &block); end

      def alert(statement, question = T.unsafe(nil)); end

      def alert_error(statement, question = T.unsafe(nil)); end

      def alert_warning(statement, question = T.unsafe(nil)); end

      def ask(question); end

      def ask_for_password(prompt); end

      def ask_yes_no(question, default = T.unsafe(nil)); end

      def choose_from_list(question, list); end

      def say(statement = T.unsafe(nil)); end

      def terminate_interaction(exit_code = T.unsafe(nil)); end

      def verbose(msg = T.unsafe(nil)); end
    end

    class TrustDir
      DEFAULT_PERMISSIONS = T.let(nil, T.untyped)

      def cert_path(certificate); end

      def dir; end

      def each_certificate; end

      def initialize(dir, permissions = T.unsafe(nil)); end

      def issuer_of(certificate); end

      def load_certificate(certificate_file); end

      def name_path(name); end

      def trust_cert(certificate); end

      def verify; end
    end
  end

  class SilentUI
    def initialize; end
  end

  class Source
    include Comparable
    FILES = T.let(nil, T.untyped)

    def ==(other); end

    def cache_dir(uri); end

    def dependency_resolver_set; end

    def download(spec, dir = T.unsafe(nil)); end

    def eql?(other); end

    def fetch_spec(name_tuple); end

    def initialize(uri); end

    def load_specs(type); end

    def pretty_print(q); end

    def update_cache?; end

    def uri; end

    class Git
      def base_dir; end

      def cache; end

      def checkout; end

      def dir_shortref; end

      def download(full_spec, path); end

      def initialize(name, repository, reference, submodules = T.unsafe(nil)); end

      def install_dir; end

      def name; end

      def need_submodules; end

      def reference; end

      def remote; end

      def remote=(remote); end

      def repo_cache_dir; end

      def repository; end

      def rev_parse; end

      def root_dir; end

      def root_dir=(root_dir); end

      def specs; end

      def uri_hash; end
    end

    class Installed
      def download(spec, path); end

      def initialize; end
    end

    class Local
      def download(spec, cache_dir = T.unsafe(nil)); end

      def fetch_spec(name); end

      def find_gem(gem_name, version = T.unsafe(nil), prerelease = T.unsafe(nil)); end

      def initialize; end
    end

    class Lock
      def initialize(source); end

      def wrapped; end
    end

    class SpecificFile
      def fetch_spec(name); end

      def initialize(file); end

      def load_specs(*a); end

      def path; end

      def spec; end
    end

    class Vendor
      def initialize(path); end
    end
  end

  class SourceFetchProblem
    def error; end

    def exception; end

    def initialize(source, error); end

    def source; end

    def wordy; end
  end

  class SourceList
    include Enumerable
    Elem = type_member(fixed: T.untyped)

    def <<(obj); end

    def ==(other); end

    def clear; end

    def delete(source); end

    def each(&blk); end

    def each_source(&b); end

    def empty?; end

    def first; end

    def include?(other); end

    def replace(other); end

    def sources; end

    def to_a; end

    def to_ary; end

    def self.from(ary); end
  end

  class SpecFetcher
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    def available_specs(type); end

    def detect(type = T.unsafe(nil)); end

    def initialize(sources = T.unsafe(nil)); end

    def latest_specs; end

    def prerelease_specs; end

    def search_for_dependency(dependency, matching_platform = T.unsafe(nil)); end

    def sources; end

    def spec_for_dependency(dependency, matching_platform = T.unsafe(nil)); end

    def specs; end

    def suggest_gems_from_name(gem_name, type = T.unsafe(nil)); end

    def tuples_for(source, type, gracefully_ignore = T.unsafe(nil)); end

    def self.fetcher; end

    def self.fetcher=(fetcher); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end
  end

  class SpecificGemNotFoundException
    def errors; end

    def initialize(name, version, errors = T.unsafe(nil)); end

    def name; end

    def version; end
  end

  class Specification
    include Bundler::MatchPlatform
    include Bundler::GemHelpers
    extend Gem::Deprecate
    DateLike = T.let(nil, T.untyped)
    DateTimeFormat = T.let(nil, T.untyped)
    INITIALIZE_CODE_FOR_DEFAULTS = T.let(nil, T.untyped)

    def ==(other); end

    def _deprecated_default_executable; end

    def _deprecated_default_executable=(_deprecated_default_executable); end

    def _deprecated_has_rdoc; end

    def _deprecated_has_rdoc=(ignored); end

    def _deprecated_has_rdoc?(*args, &block); end

    def _dump(limit); end

    def abbreviate; end

    def activate; end

    def activate_dependencies; end

    def activated; end

    def activated=(activated); end

    def add_bindir(executables); end

    def add_dependency(gem, *requirements); end

    def add_development_dependency(gem, *requirements); end

    def add_runtime_dependency(gem, *requirements); end

    def add_self_to_load_path; end

    def author; end

    def author=(o); end

    def authors; end

    def authors=(value); end

    def autorequire; end

    def autorequire=(autorequire); end

    def bin_dir; end

    def bin_file(name); end

    def bindir; end

    def bindir=(bindir); end

    def build_args; end

    def build_extensions; end

    def build_info_dir; end

    def build_info_file; end

    def cache_dir; end

    def cache_file; end

    def cert_chain; end

    def cert_chain=(cert_chain); end

    def conficts_when_loaded_with?(list_of_specs); end

    def conflicts; end

    def date; end

    def date=(date); end

    def default_executable(*args, &block); end

    def default_executable=(*args, &block); end

    def default_value(name); end

    def dependencies; end

    def dependent_gems; end

    def dependent_specs; end

    def description; end

    def description=(str); end

    def development_dependencies; end

    def doc_dir(type = T.unsafe(nil)); end

    def email; end

    def email=(email); end

    def encode_with(coder); end

    def eql?(other); end

    def executable; end

    def executable=(o); end

    def executables; end

    def executables=(value); end

    def extensions; end

    def extensions=(extensions); end

    def extra_rdoc_files; end

    def extra_rdoc_files=(files); end

    def file_name; end

    def files; end

    def files=(files); end

    def for_cache; end

    def git_version; end

    def groups; end

    def has_conflicts?; end

    def has_rdoc(*args, &block); end

    def has_rdoc=(*args, &block); end

    def has_rdoc?(*args, &block); end

    def has_test_suite?; end

    def has_unit_tests?; end

    def homepage; end

    def homepage=(homepage); end

    def init_with(coder); end

    def initialize(name = T.unsafe(nil), version = T.unsafe(nil)); end

    def installed_by_version; end

    def installed_by_version=(version); end

    def keep_only_files_and_directories; end

    def lib_files; end

    def license; end

    def license=(o); end

    def licenses; end

    def licenses=(licenses); end

    def load_paths; end

    def location; end

    def location=(location); end

    def mark_version; end

    def metadata; end

    def metadata=(metadata); end

    def method_missing(sym, *a, &b); end

    def missing_extensions?; end

    def name=(name); end

    def name_tuple; end

    def nondevelopment_dependencies; end

    def normalize; end

    def original_name; end

    def original_platform; end

    def original_platform=(original_platform); end

    def platform=(platform); end

    def post_install_message; end

    def post_install_message=(post_install_message); end

    def pretty_print(q); end

    def raise_if_conflicts; end

    def rdoc_options; end

    def rdoc_options=(options); end

    def relative_loaded_from; end

    def relative_loaded_from=(relative_loaded_from); end

    def remote; end

    def remote=(remote); end

    def require_path; end

    def require_path=(path); end

    def require_paths=(val); end

    def required_ruby_version; end

    def required_ruby_version=(req); end

    def required_rubygems_version; end

    def required_rubygems_version=(req); end

    def requirements; end

    def requirements=(req); end

    def reset_nil_attributes_to_default; end

    def rg_extension_dir; end

    def rg_full_gem_path; end

    def rg_loaded_from; end

    def ri_dir; end

    def rubyforge_project=(rubyforge_project); end

    def rubygems_version; end

    def rubygems_version=(rubygems_version); end

    def runtime_dependencies; end

    def sanitize; end

    def sanitize_string(string); end

    def satisfies_requirement?(dependency); end

    def signing_key; end

    def signing_key=(signing_key); end

    def sort_obj; end

    def source; end

    def source=(source); end

    def spec_dir; end

    def spec_file; end

    def spec_name; end

    def specification_version; end

    def specification_version=(specification_version); end

    def summary; end

    def summary=(str); end

    def test_file; end

    def test_file=(file); end

    def test_files; end

    def test_files=(files); end

    def to_gemfile(path = T.unsafe(nil)); end

    def to_ruby; end

    def to_ruby_for_cache; end

    def to_yaml(opts = T.unsafe(nil)); end

    def traverse(trail = T.unsafe(nil), visited = T.unsafe(nil), &block); end

    def validate(packaging = T.unsafe(nil), strict = T.unsafe(nil)); end

    def validate_dependencies; end

    def validate_metadata; end

    def validate_permissions; end

    def version=(version); end

    def yaml_initialize(tag, vals); end

    def self._all; end

    def self._clear_load_cache; end

    def self._latest_specs(specs, prerelease = T.unsafe(nil)); end

    def self._load(str); end

    def self._resort!(specs); end

    def self.add_spec(spec); end

    def self.add_specs(*specs); end

    def self.all; end

    def self.all=(specs); end

    def self.all_names; end

    def self.array_attributes; end

    def self.attribute_names; end

    def self.dirs; end

    def self.dirs=(dirs); end

    def self.each(&blk); end

    def self.each_gemspec(dirs); end

    def self.each_spec(dirs); end

    def self.find_active_stub_by_path(path); end

    def self.find_all_by_full_name(full_name); end

    def self.find_all_by_name(name, *requirements); end

    def self.find_by_name(name, *requirements); end

    def self.find_by_path(path); end

    def self.find_in_unresolved(path); end

    def self.find_in_unresolved_tree(path); end

    def self.find_inactive_by_path(path); end

    def self.from_yaml(input); end

    def self.latest_specs(prerelease = T.unsafe(nil)); end

    def self.load(file); end

    def self.load_defaults; end

    def self.non_nil_attributes; end

    def self.normalize_yaml_input(input); end

    def self.outdated; end

    def self.outdated_and_latest_version; end

    def self.remove_spec(spec); end

    def self.required_attribute?(name); end

    def self.required_attributes; end

    def self.reset; end

    def self.stubs; end

    def self.stubs_for(name); end

    def self.unresolved_deps; end
  end

  class SpecificationPolicy
    HOMEPAGE_URI_PATTERN = T.let(nil, T.untyped)
    LAZY = T.let(nil, T.untyped)
    LAZY_PATTERN = T.let(nil, T.untyped)
    METADATA_LINK_KEYS = T.let(nil, T.untyped)
    SPECIAL_CHARACTERS = T.let(nil, T.untyped)
    VALID_NAME_PATTERN = T.let(nil, T.untyped)
    VALID_URI_PATTERN = T.let(nil, T.untyped)

    def initialize(specification); end

    def packaging; end

    def packaging=(packaging); end

    def validate(strict = T.unsafe(nil)); end

    def validate_dependencies; end

    def validate_metadata; end

    def validate_permissions; end
  end

  class StreamUI
    extend Gem::Deprecate

    def _deprecated_debug(statement); end

    def _gets_noecho; end

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(question); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def backtrace(exception); end

    def choose_from_list(question, list); end

    def close; end

    def debug(*args, &block); end

    def download_reporter(*args); end

    def errs; end

    def initialize(in_stream, out_stream, err_stream = T.unsafe(nil), usetty = T.unsafe(nil)); end

    def ins; end

    def outs; end

    def progress_reporter(*args); end

    def require_io_console; end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(status = T.unsafe(nil)); end

    def tty?; end
  end

  class StubSpecification
    def build_extensions; end

    def extensions; end

    def initialize(filename, base_dir, gems_dir, default_gem); end

    def missing_extensions?; end

    def valid?; end

    def self.default_gemspec_stub(filename, base_dir, gems_dir); end

    def self.gemspec_stub(filename, base_dir, gems_dir); end

    class StubLine
      def extensions; end

      def full_name; end

      def initialize(data, extensions); end

      def name; end

      def platform; end

      def require_paths; end

      def version; end
    end
  end

  class SystemExitException
    def exit_code; end

    def exit_code=(exit_code); end

    def initialize(exit_code); end
  end

  module Text
    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class UninstallError
    def spec; end

    def spec=(spec); end
  end

  class UnsatisfiableDependencyError
    def dependency; end

    def errors; end

    def errors=(errors); end

    def initialize(dep, platform_mismatch = T.unsafe(nil)); end

    def name; end

    def version; end
  end

  class UriFormatter
    def escape; end

    def initialize(uri); end

    def normalize; end

    def unescape; end

    def uri; end
  end

  module UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    def alert(statement, question = T.unsafe(nil)); end

    def alert_error(statement, question = T.unsafe(nil)); end

    def alert_warning(statement, question = T.unsafe(nil)); end

    def ask(question); end

    def ask_for_password(prompt); end

    def ask_yes_no(question, default = T.unsafe(nil)); end

    def choose_from_list(question, list); end

    def say(statement = T.unsafe(nil)); end

    def terminate_interaction(exit_code = T.unsafe(nil)); end

    def verbose(msg = T.unsafe(nil)); end

    def clean_text(text); end

    def format_text(text, wrap, indent = T.unsafe(nil)); end

    def levenshtein_distance(str1, str2); end

    def min3(a, b, c); end

    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    def ui; end

    def ui=(new_ui); end

    def use_ui(new_ui, &block); end
  end

  module Util
    def self.glob_files_in_dir(glob, base_path); end

    def self.gunzip(data); end

    def self.gzip(data); end

    def self.inflate(data); end

    def self.popen(*command); end

    def self.silent_system(*command); end

    def self.traverse_parents(directory, &block); end
  end

  class Version
    def _segments; end

    def _split_segments; end

    def _version; end

    def approximate_recommendation; end

    def bump; end

    def canonical_segments; end

    def encode_with(coder); end

    def eql?(other); end

    def init_with(coder); end

    def marshal_dump; end

    def marshal_load(array); end

    def prerelease?; end

    def pretty_print(q); end

    def release; end

    def segments; end

    def to_yaml_properties; end

    def version; end

    def yaml_initialize(tag, map); end

    def self.correct?(version); end

    def self.create(input); end

    def self.new(version); end
  end
end

Gem::UnsatisfiableDepedencyError = Gem::UnsatisfiableDependencyError
Gem::Ext::ExtConfBuilder::FileEntry = FileUtils::Entry_
Gem::Version::Requirement = Gem::Requirement
Gem::Resolver::DependencyConflict = Gem::Resolver::Conflict
