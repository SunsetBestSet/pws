return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 6,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 8,
  nextobjectid = 6,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 6,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 588,
        0, 1, 1, 1, 1, 588,
        0, 1, 1, 1, 1, 588,
        0, 1, 1, 1, 1, 588,
        0, 1, 1, 1, 1, 588,
        0, 1, 1, 1, 1, 588,
        0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "carpet",
      x = 0,
      y = 0,
      width = 6,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 571, 573, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 651, 653, 0, 0,
        0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "wall",
      x = 0,
      y = 0,
      width = 6,
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
        588, 247, 248, 246, 247, 588,
        588, 287, 288, 286, 287, 588,
        588, 327, 328, 326, 327, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 588, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 6,
      name = "stairs",
      x = 0,
      y = 0,
      width = 6,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 2684355243, 2684355203,
        0, 0, 0, 0, 2684355244, 2684355204,
        0, 0, 0, 0, 1610613338, 1610613378,
        0, 0, 0, 0, 1610613337, 1610613377,
        0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "door",
      x = 0,
      y = 0,
      width = 6,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 168, 169, 0, 0,
        0, 0, 208, 209, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 2,
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
          name = "throne_door",
          type = "",
          shape = "rectangle",
          x = 79.6667,
          y = 111.667,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/throne_room.lua"
          }
        },
        {
          id = 2,
          name = "main_hallway",
          type = "",
          shape = "rectangle",
          x = 33.6667,
          y = 47.3333,
          width = 29.3333,
          height = 4.66667,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/main_hallway.lua"
          }
        },
        {
          id = 3,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 41.8182,
          y = 64.1818,
          width = 13.0909,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "player_spawn1",
          type = "",
          shape = "rectangle",
          x = 46.7273,
          y = 120.727,
          width = 12.9091,
          height = 12.9091,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "up_stairs",
          type = "",
          shape = "rectangle",
          x = 79.625,
          y = 80,
          width = 16,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 3,
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
