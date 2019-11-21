return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 3,
  height = 16,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 7,
  nextobjectid = 4,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 3,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1,
        1, 1, 1
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "carpet",
      x = 0,
      y = 0,
      width = 3,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        322, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0,
        0, 322, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "decorations",
      x = 0,
      y = 0,
      width = 3,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 452,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 452
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "wall",
      x = 0,
      y = 0,
      width = 3,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        246, 378, 248,
        286, 418, 288,
        326, 458, 328,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 5,
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
          x = 17.9037,
          y = 64.7288,
          width = 11.4767,
          height = 11.4767,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "kana_hallway",
          type = "",
          shape = "rectangle",
          x = -0.459069,
          y = 63.3516,
          width = 5.9679,
          height = 14.2311,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/kana_hallway.lua"
          }
        },
        {
          id = 3,
          name = "infirmary_door",
          type = "",
          shape = "rectangle",
          x = 33.053,
          y = 208.877,
          width = 11.9358,
          height = 12.3949,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/infirmary.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 6,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    }
  }
}
