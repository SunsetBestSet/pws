return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 8,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 14,
  nextobjectid = 7,
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
      filename = "overworld0.tsx.tmx",
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
      id = 9,
      name = "floor",
      x = 0,
      y = 0,
      width = 18,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 12,
      name = "carpet",
      x = 0,
      y = 0,
      width = 18,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572,
        652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 10,
      name = "wall",
      x = 0,
      y = 0,
      width = 18,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 378, 248, 246, 247, 248, 420, 421, 422, 420, 421, 422, 246, 247, 248, 246, 378, 588,
        588, 418, 288, 286, 287, 288, 460, 461, 462, 460, 461, 462, 286, 287, 288, 286, 418, 588,
        588, 458, 328, 326, 327, 328, 500, 501, 502, 500, 501, 502, 326, 327, 328, 326, 458, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 11,
      name = "door",
      x = 0,
      y = 0,
      width = 18,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 168, 169, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 13,
      name = "deco",
      x = 0,
      y = 0,
      width = 18,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 540, 0, 0, 540, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 580, 0, 0, 580, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 455, 0, 0, 537, 0, 0, 0, 0, 537, 0, 455, 0, 0, 0, 0,
        0, 0, 0, 495, 0, 0, 577, 0, 0, 0, 0, 577, 0, 495, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 7,
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
          x = 136.757,
          y = 74.1471,
          width = 12.4299,
          height = 13.2871,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = ""
          }
        },
        {
          id = 2,
          name = "kana_door",
          type = "",
          shape = "rectangle",
          x = 129.379,
          y = 48.1818,
          width = 29.2216,
          height = 6.12673,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/kanaroom.lua"
          }
        },
        {
          id = 4,
          name = "leiko_hallway",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 64.005,
          width = 4.43744,
          height = 31.6355,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/leiko_hallway.lua"
          }
        },
        {
          id = 6,
          name = "infirmary_hallway",
          type = "",
          shape = "rectangle",
          x = 282.433,
          y = 64.1073,
          width = 5.24424,
          height = 32.0617,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/infirmary_hallway.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 8,
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
