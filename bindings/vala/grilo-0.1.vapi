/* grilo-0.1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Grl", lower_case_cprefix = "grl_")]
namespace Grl {
	[CCode (cheader_filename = "grilo.h")]
	public class Content : GLib.Object {
		[CCode (has_construct_function = false)]
		public Content ();
		public void add (Grl.KeyID key);
		public GLib.Value @get (Grl.KeyID key);
		public float get_float (Grl.KeyID key);
		public int get_int (Grl.KeyID key);
		public unowned GLib.List get_keys ();
		public bool get_overwrite ();
		public unowned string get_string (Grl.KeyID key);
		public bool has_key (Grl.KeyID key);
		public bool key_is_known (Grl.KeyID key);
		public void remove (Grl.KeyID key);
		public void @set (Grl.KeyID key, GLib.Value value);
		public void set_float (Grl.KeyID key, int floatvalue);
		public void set_int (Grl.KeyID key, int intvalue);
		public void set_overwrite (bool overwrite);
		public void set_string (Grl.KeyID key, string strvalue);
		public bool overwrite { get; set; }
	}
	[CCode (cheader_filename = "grilo.h")]
	public class ContentAudio : Grl.ContentMedia {
		[CCode (type = "GrlContentMedia*", has_construct_function = false)]
		public ContentAudio ();
	}
	[CCode (cheader_filename = "grilo.h")]
	public class ContentBox : Grl.ContentMedia {
		[CCode (type = "GrlContentMedia*", has_construct_function = false)]
		public ContentBox ();
		public int get_childcount ();
		public void set_childcount (int childcount);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class ContentImage : Grl.ContentMedia {
		[CCode (type = "GrlContentMedia*", has_construct_function = false)]
		public ContentImage ();
		public void set_size (int width, int height);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class ContentMedia : Grl.Content {
		[CCode (has_construct_function = false)]
		public ContentMedia ();
		public unowned string get_author ();
		public unowned string get_date ();
		public unowned string get_description ();
		public int get_duration ();
		public unowned string get_mime ();
		public unowned string get_rating ();
		public unowned string get_site ();
		public unowned string get_source ();
		public unowned string get_thumbnail ();
		public unowned string get_title ();
		public unowned string get_url ();
		public void set_rating (string rating, string max);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class ContentVideo : Grl.ContentMedia {
		[CCode (type = "GrlContentMedia*", has_construct_function = false)]
		public ContentVideo ();
		public void set_size (int width, int height);
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class KeyID {
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaPlugin : GLib.Object {
		public unowned string get_author ();
		public unowned string get_description ();
		public unowned string get_id ();
		public unowned string get_license ();
		public unowned string get_name ();
		public unowned string get_site ();
		public unowned string get_version ();
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSource : Grl.MetadataSource {
		public virtual void browse (Grl.ContentMedia container, GLib.List keys, uint skip, uint count, Grl.MetadataResolutionFlags flags, Grl.MediaSourceResultCb callback);
		public virtual void cancel (uint operation_id);
		public uint get_auto_split_threshold ();
		public void* get_operation_data (uint operation_id);
		public virtual void metadata (Grl.ContentMedia media, GLib.List keys, Grl.MetadataResolutionFlags flags, Grl.MediaSourceMetadataCb callback);
		public virtual void query (string query, GLib.List keys, uint skip, uint count, Grl.MetadataResolutionFlags flags, Grl.MediaSourceResultCb callback);
		public virtual void remove (Grl.ContentMedia media, Grl.MediaSourceRemoveCb callback);
		public virtual void search (string text, GLib.List keys, uint skip, uint count, Grl.MetadataResolutionFlags flags, Grl.MediaSourceResultCb callback);
		public void set_auto_split_threshold (uint threshold);
		public void set_operation_data (uint operation_id, void* data);
		public virtual void store (Grl.ContentBox parent, Grl.ContentMedia media, Grl.MediaSourceStoreCb callback);
		public uint auto_split_threshold { get; set; }
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceBrowseSpec {
		public uint browse_id;
		public weak Grl.MediaSourceResultCb callback;
		public weak Grl.ContentMedia container;
		public uint count;
		public Grl.MetadataResolutionFlags flags;
		public weak GLib.List keys;
		public uint skip;
		public weak Grl.MediaSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceMetadataSpec {
		public weak Grl.MediaSourceMetadataCb callback;
		public Grl.MetadataResolutionFlags flags;
		public weak GLib.List keys;
		public weak Grl.ContentMedia media;
		public weak Grl.MediaSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceQuerySpec {
		public weak Grl.MediaSourceResultCb callback;
		public uint count;
		public Grl.MetadataResolutionFlags flags;
		public weak GLib.List keys;
		public weak string query;
		public uint query_id;
		public uint skip;
		public weak Grl.MediaSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceRemoveSpec {
		public weak Grl.MediaSourceRemoveCb callback;
		public weak Grl.ContentMedia media;
		public weak string media_id;
		public weak Grl.MediaSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceSearchSpec {
		public weak Grl.MediaSourceResultCb callback;
		public uint count;
		public Grl.MetadataResolutionFlags flags;
		public weak GLib.List keys;
		public uint search_id;
		public uint skip;
		public weak Grl.MediaSource source;
		public weak string text;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MediaSourceStoreSpec {
		public weak Grl.MediaSourceStoreCb callback;
		public weak Grl.ContentMedia media;
		public weak Grl.ContentBox parent;
		public weak Grl.MediaSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MetadataKey {
		public weak string desc;
		public weak Grl.KeyID id;
		public weak string name;
		public static unowned GLib.List list_new (...);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MetadataSource : Grl.MediaPlugin {
		public unowned GLib.List filter_slow (GLib.List keys, bool return_filtered);
		public unowned GLib.List filter_supported (GLib.List keys, bool return_filtered);
		public unowned string get_description ();
		public unowned string get_id ();
		public unowned string get_name ();
		public virtual unowned GLib.List key_depends (Grl.KeyID key_id);
		public virtual void resolve (GLib.List keys, Grl.ContentMedia media, uint flags, Grl.MetadataSourceResolveCb callback);
		public virtual unowned GLib.List slow_keys ();
		public virtual unowned GLib.List supported_keys ();
		public virtual Grl.SupportedOps supported_operations ();
		[NoAccessorMethod]
		public string source_desc { owned get; set construct; }
		[NoAccessorMethod]
		public string source_id { owned get; set construct; }
		[NoAccessorMethod]
		public string source_name { owned get; set construct; }
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class MetadataSourceResolveSpec {
		public weak Grl.MetadataSourceResolveCb callback;
		public uint flags;
		public weak GLib.List keys;
		public weak Grl.ContentMedia media;
		public weak Grl.MetadataSource source;
		public void* user_data;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class PluginDescriptor {
		public weak Grl.PluginInfo info;
		public weak GLib.Callback plugin_deinit;
		public weak GLib.Callback plugin_init;
	}
	[Compact]
	[CCode (cheader_filename = "grilo.h")]
	public class PluginInfo {
		public weak string author;
		public weak string desc;
		public weak string id;
		public weak string license;
		public weak string name;
		public weak string site;
		public weak string version;
	}
	[CCode (cheader_filename = "grilo.h")]
	public class PluginRegistry : GLib.Object {
		public static unowned Grl.PluginRegistry get_instance ();
		[CCode (array_length = false)]
		public unowned Grl.MediaPlugin[] get_sources ();
		public bool load (string path);
		public bool load_all ();
		public bool load_directory (string path);
		public unowned Grl.MetadataKey lookup_metadata_key (Grl.KeyID key_id);
		public unowned Grl.MediaPlugin lookup_source (string source_id);
		public bool register_source (Grl.PluginInfo plugin, Grl.MediaPlugin source);
		public void unload (string plugin_id);
		public void unregister_source (Grl.MediaPlugin source);
		public virtual signal void source_added (Grl.MediaPlugin p0);
		public virtual signal void source_removed (Grl.MediaPlugin p0);
	}
	[CCode (cprefix = "GRL_RESOLVE_", has_type_id = false, cheader_filename = "grilo.h")]
	public enum MetadataResolutionFlags {
		NORMAL,
		FULL,
		IDLE_RELAY,
		FAST_ONLY
	}
	[CCode (cprefix = "GRL_OP_", has_type_id = false, cheader_filename = "grilo.h")]
	public enum SupportedOps {
		NONE,
		METADATA,
		RESOLVE,
		BROWSE,
		SEARCH,
		QUERY,
		STORE,
		STORE_PARENT,
		REMOVE
	}
	[CCode (cprefix = "GRL_ERROR_", cheader_filename = "grilo.h")]
	public errordomain Error {
		BROWSE_FAILED,
		SEARCH_FAILED,
		QUERY_FAILED,
		METADATA_FAILED,
		RESOLVE_FAILED,
		MEDIA_NOT_FOUND,
		STORE_FAILED,
		REMOVE_FAILED,
	}
	[CCode (cheader_filename = "grilo.h", instance_pos = 2.1)]
	public delegate void MediaSourceMetadataCb (Grl.MediaSource source, Grl.ContentMedia? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 2.1)]
	public delegate void MediaSourceRemoveCb (Grl.MediaSource source, Grl.ContentMedia? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 4.1)]
	public delegate void MediaSourceResultCb (Grl.MediaSource source, uint browse_id, Grl.ContentMedia? media, uint remaining, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 4.1)]
	public delegate void MediaSourceStoreCb (Grl.MediaSource source, Grl.ContentBox parent, Grl.ContentMedia? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 2.1)]
	public delegate void MetadataSourceResolveCb (Grl.MetadataSource source, Grl.ContentMedia? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h")]
	public const string KEYID_FORMAT;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_ALBUM;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ALBUM_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ALBUM_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_ARTIST;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ARTIST_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ARTIST_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_AUTHOR;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_AUTHOR_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_AUTHOR_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_CHILDCOUNT;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_CHILDCOUNT_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_CHILDCOUNT_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_CHILDCOUNT_UNKNOWN;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_DATE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DATE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DATE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_DESCRIPTION;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DESCRIPTION_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DESCRIPTION_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_DURATION;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DURATION_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_DURATION_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_FRAMERATE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_FRAMERATE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_FRAMERATE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_GENRE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_GENRE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_GENRE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_HEIGHT;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_HEIGHT_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_HEIGHT_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_ID;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ID_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_ID_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_LYRICS;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_LYRICS_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_LYRICS_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_MIME;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_MIME_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_MIME_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_RATING;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_RATING_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_RATING_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_SITE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_SITE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_SITE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_SOURCE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_SOURCE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_SOURCE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_THUMBNAIL;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_THUMBNAIL_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_THUMBNAIL_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_TITLE;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_TITLE_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_TITLE_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_URL;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_URL_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_URL_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int METADATA_KEY_WIDTH;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_WIDTH_DESC;
	[CCode (cheader_filename = "grilo.h")]
	public const string METADATA_KEY_WIDTH_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_PATH_VAR;
	[CCode (cheader_filename = "grilo.h")]
	public static void log_init (string domains);
}
