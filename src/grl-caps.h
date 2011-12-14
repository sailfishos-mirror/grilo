/*
 * Copyright (C) 2011 Igalia S.L.
 *
 * Contact: Iago Toral Quiroga <itoral@igalia.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; version 2.1 of
 * the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA
 *
 */

#if !defined (_GRILO_H_INSIDE_) && !defined (GRILO_COMPILATION)
#error "Only <grilo.h> can be included directly."
#endif

#if !defined (_GRL_CAPS_H_)
#define _GRL_CAPS_H_

#include <glib-object.h>
#include <grl-definitions.h>

G_BEGIN_DECLS

typedef struct _GrlCapsPrivate GrlCapsPrivate;

typedef struct {
  GObject parent;

  /*< private >*/
  GrlCapsPrivate *priv;

  gpointer _grl_reserved[GRL_PADDING_SMALL];
} GrlCaps;

typedef struct {
  GObjectClass parent;

  /*< private >*/
  gpointer _grl_reserved[GRL_PADDING];
} GrlCapsClass;

#define GRL_CAPS_TYPE (grl_caps_get_type ())
#define GRL_CAPS(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), GRL_CAPS_TYPE, GrlCaps))
#define GRL_CAPS_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), GRL_CAPS_TYPE, GrlCapsClass))
#define IS_GRL_CAPS(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GRL_CAPS_TYPE))
#define IS_GRL_CAPS_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), GRL_CAPS_TYPE))
#define GRL_CAPS_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GRL_CAPS_TYPE, GrlCapsClass))

/**
 * GrlTypeFilter:
 * @GRL_TYPE_FILTER_NONE: no type filtering
 * @GRL_TYPE_FILTER_AUDIO: allow audio content
 * @GRL_TYPE_FILTER_VIDEO: allow video content
 * @GRL_TYPE_FILTER_IMAGE: allow image content
 *
 * Type of media to allow.
 **/
typedef enum {
  GRL_TYPE_FILTER_NONE = 0,
  GRL_TYPE_FILTER_AUDIO = (1 << 0),
  GRL_TYPE_FILTER_VIDEO = (1 << 1),
  GRL_TYPE_FILTER_IMAGE = (1 << 2),
  GRL_TYPE_FILTER_ALL = (GRL_TYPE_FILTER_AUDIO | GRL_TYPE_FILTER_VIDEO | GRL_TYPE_FILTER_IMAGE),
} GrlTypeFilter;


GType grl_caps_get_type (void);

GrlCaps *grl_caps_new (void);

gboolean grl_caps_test_option (GrlCaps *caps,
                               const gchar *key,
                               const GValue *value);

GrlTypeFilter grl_caps_get_type_filter (GrlCaps *caps);

void grl_caps_set_type_filter (GrlCaps *caps, GrlTypeFilter filter);

G_END_DECLS

#endif /* _GRL_CAPS_H_ */