return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 14,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 12,
  nextobjectid = 12,
  properties = {},
  tilesets = {
    {
      name = "inner",
      firstgid = 1,
      filename = "inner1.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "inner.png",
      imagewidth = 640,
      imageheight = 400,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1000,
      tiles = {}
    },
    {
      name = "overworld0",
      firstgid = 1001,
      filename = "overworld.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "overworld0.png",
      imagewidth = 640,
      imageheight = 576,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1440,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 2222, 2222, 1882, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 2222, 2222, 1882, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "wall",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        248, 246, 378, 248, 246, 378, 248, 246, 378, 248, 246, 378, 248, 246,
        288, 286, 418, 288, 286, 418, 288, 286, 418, 288, 286, 418, 288, 286,
        328, 326, 458, 328, 326, 458, 328, 326, 458, 328, 326, 458, 328, 326,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 8,
      name = "lights",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        294, 294, 0, 0, 0, 0, 294, 294, 0, 0, 0, 0, 294, 294,
        334, 334, 0, 0, 0, 0, 334, 334, 0, 0, 0, 0, 334, 334,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "carpet",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 281, 282, 282, 282, 282, 282, 283, 0, 0, 0,
        0, 0, 0, 0, 321, 322, 322, 322, 322, 322, 323, 0, 0, 0,
        0, 0, 0, 0, 321, 322, 322, 322, 322, 322, 323, 0, 0, 0,
        0, 0, 0, 0, 361, 362, 362, 362, 362, 362, 363, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "bed",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 61, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 101, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 141, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "furniture",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 484, 486, 534, 535, 536, 0, 456, 0, 487,
        0, 0, 0, 0, 0, 524, 526, 574, 575, 576, 0, 496, 0, 527,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 567,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 607,
        0, 0, 0, 0, 0, 177, 0, 0, 0, 179, 0, 0, 0, 487,
        0, 0, 0, 0, 0, 217, 51, 52, 53, 219, 0, 0, 0, 527,
        0, 0, 0, 0, 0, 257, 131, 132, 133, 259, 0, 0, 0, 567,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 607
      }
    },
    {
      type = "tilelayer",
      id = 6,
      name = "chair",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 178, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "decorations",
      x = 0,
      y = 0,
      width = 14,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 251, 0, 530, 0, 0, 0, 531,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 374, 0, 0, 451,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 410,
        0, 0, 0, 0, 0, 0, 374, 452, 374, 0, 0, 0, 0, 490,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 9,
      name = "Objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 57.0007,
          y = 55.1284,
          width = 12.3333,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "hallway_door1",
          type = "",
          shape = "rectangle",
          x = 24.474,
          y = 144.603,
          width = 14.1191,
          height = 14.4721,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/leiko_hallway.lua"
          }
        },
        {
          id = 8,
          name = "book1",
          type = "",
          shape = "rectangle",
          x = 160.958,
          y = 48.711,
          width = 14.4721,
          height = 14.1191,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "book2",
          type = "",
          shape = "rectangle",
          x = 127.778,
          y = 111.188,
          width = 15.531,
          height = 16.237,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "book3",
          type = "",
          shape = "rectangle",
          x = 95.6571,
          y = 111.188,
          width = 16.237,
          height = 16.237,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "leiko_bed",
          type = "",
          shape = "rectangle",
          x = 15.884,
          y = 46.9461,
          width = 31.4151,
          height = 48.005,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["collidable"] = true
      },
      objects = {}
    }
  }
}
