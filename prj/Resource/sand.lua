return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "v0.16.1-19-gc0c5dee",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 20,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "tmw_desert_spacing",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 1,
      margin = 1,
      image = "atlas/tmw_desert_spacing.png",
      imagewidth = 265,
      imageheight = 199,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 48,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Ground",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyTY2BgkKMBlgRiKRKwNJp+DTS+IhCrALEWEVgViJXxuE0Bah4+Neh2E1KLS408AbUKFNhJqvt08IQ3cnzpEmGeJlqYa5Mojw/rQWk2IGYHYg4S9KrhwXxAzA/EAnjUINtPCCObR6z72PFgXqh5PATUIYcHPxUwyP0GUPPEqYAlsPhbgYQwIgfrE7BPA4lGL1soxcSYh+4+WrmFkJ3UxgB6GC1M"
    },
    {
      type = "objectgroup",
      name = "Object",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 1,
          name = "SpwanPoint",
          type = "",
          shape = "rectangle",
          x = 54,
          y = 401,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
