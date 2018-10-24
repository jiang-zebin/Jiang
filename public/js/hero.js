new Vue({
  el:"#hero",
  data:{
    res:[],
    Type:"All",
    heroName:"",
    typelist:[
      {id:"r1",type:"All",label:"所有英雄"},
      {id:"r2",type:"Fighter",label:"战士"},
      {id:"r3",type:"Mage",label:"法师"},
      {id:"r4",type:"Assassin",label:"刺客"},
      {id:"r5",type:"Tank",label:"坦克"},
      {id:"r6",type:"Marksman",label:"射手"},
      {id:"r7",type:"Support",label:"辅助"}
    ]
  },
  methods:{
    getList(){
      (async function(self){
        var url="http://localhost:3000/hero/type?hero_type="+self.Type
        var res=await axios.get(url)
        self.res=res.data
      })(this)
    },
    search(){
      (async function(self){
        var url="http://localhost:3000/hero/search?heroName="+self.heroName
        var res=await axios.get(url)
        self.res=res.data
      })(this)
    }
  },
  created(){
    this.getList();
  }
})
