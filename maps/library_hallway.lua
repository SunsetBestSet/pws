return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 6,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 8,
  nextobjectid = 13,
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
      id = 3,
      name = "floor",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
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
        0, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 0, 1, 1, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "carpet",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
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
        571, 572, 572, 572, 572, 573,
        651, 652, 691, 692, 652, 653,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        571, 572, 612, 613, 0, 0,
        651, 652, 691, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 651, 653, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 1,
      name = "wall",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 379, 248, 246, 379, 588,
        588, 419, 288, 286, 419, 588,
        588, 459, 328, 326, 459, 588,
        588, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 588, 0, 0, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "deco",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 455, 0, 0, 455, 0,
        0, 495, 0, 0, 495, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
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
          name = "room_hallway",
          type = "",
          shape = "rectangle",
          x = 90.125,
          y = 63.875,
          width = 5.75,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/room_hallway.lua"
          }
        },
        {
          id = 4,
          name = "library_door",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 63.75,
          width = 6,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/library.lua"
          }
        },
        {
          id = 5,
          name = "main_hallway",
          type = "",
          shape = "rectangle",
          x = 31.75,
          y = 315,
          width = 32.5,
          height = 4.75,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/main_hallway.lua"
          }
        },
        {
          id = 6,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 60.5834,
          y = 74.25,
          width = 13.6667,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "player_spawn1",
          type = "",
          shape = "rectangle",
          x = 20.5455,
          y = 73.4318,
          width = 15.6364,
          height = 14.1818,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "player_spawn2",
          type = "",
          shape = "rectangle",
          x = 20.6364,
          y = 248.045,
          width = 14.9091,
          height = 14.7273,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "player_spawn3",
          type = "",
          shape = "rectangle",
          x = 39.4773,
          y = 283.205,
          width = 15.2727,
          height = 15.2727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "sitting_door",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 239.636,
          width = 6.18182,
          height = 32.1818,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/sitting_room.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 2,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15.5,
          y = 32,
          width = 16.75,
          height = 23.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 31.75,
          width = 15.75,
          height = 23.75,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}