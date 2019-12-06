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
  nextlayerid = 15,
  nextobjectid = 9,
  properties = {},
  tilesets = {
    {
      name = "inner",
      firstgid = 1,
      filename = "indoor.tsx.tmx",
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
      name = "inner",
      firstgid = 1001,
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
      firstgid = 2001,
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
      id = 3,
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
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 1001,
        1, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 1001,
        0, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
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
        1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572,
        1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 12,
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
        1588, 1247, 1248, 1246, 1378, 1248, 1246, 1247, 1248, 1246, 1247, 1248, 1246, 1378, 1248, 1246, 1247, 1588,
        1588, 1287, 1288, 1286, 1418, 1288, 1286, 1287, 1288, 1286, 1287, 1288, 1286, 1418, 1288, 1286, 1287, 1588,
        1588, 1327, 1328, 1326, 1458, 1328, 1326, 1327, 1328, 1326, 1327, 1328, 1326, 1458, 1328, 1326, 1327, 1588,
        1588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1588,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1588,
        1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588
      }
    },
    {
      type = "tilelayer",
      id = 13,
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
        0, 0, 0, 0, 0, 0, 0, 0, 1168, 1169, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1208, 1209, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 14,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 1489, 0, 0, 0, 0, 1489, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 1529, 0, 0, 0, 0, 1529, 0, 0, 0, 0, 0, 0,
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
          x = 135.795,
          y = 78.4918,
          width = 15.3333,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "leiko_door",
          type = "",
          shape = "rectangle",
          x = 129.249,
          y = 47.8139,
          width = 29.4092,
          height = 7.1444,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/leikoroom.lua"
          }
        },
        {
          id = 6,
          name = "kana_hallway",
          type = "",
          shape = "rectangle",
          x = 281.311,
          y = 63.721,
          width = 6.4299,
          height = 31.6204,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/kana_hallway.lua"
          }
        },
        {
          id = 8,
          name = "library_hallway",
          type = "",
          shape = "rectangle",
          x = -0.125,
          y = 63.875,
          width = 6.25,
          height = 32.125,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/library_hallway.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 9,
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
