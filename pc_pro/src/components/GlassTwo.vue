<template>
	<div class="glass" @mouseleave="isglass = false">
		<div class="glass-wrap" @mousemove="move">
			<div class="glass-img"  @mouseenter="init" ref="glass">
				<img :src="img_s">
				<div class="msk" v-show="isglass" ref="msk" :style="{top:maskt + 'px',left:maskl + 'px'}"></div>
			</div>
			<div class="bigimg-box" v-show="isglass">
				<img :src="img_b" ref="bigimg" :style="{top:bigt + 'px',left:bigl + 'px'}">
			</div>
		</div>
	</div>

</template>

<script>
	export default {
		name:"GlassTwo",
		props:{
			img_s:{
				type:String,
				require: true
			},
			img_b:{
				type:String,
				require: true
			}
		},
		data(){
			return {
				isglass:false,
				maskt:0,
				maskl:0,
				bigt:0,
				bigl:0,
				left:0,
				top:0
			}
		},
		methods:{
			init(e){
				// console.log(e)
				this.isglass = true;
				this.$nextTick(()=>{
					// console.log(this.$refs.glass.offsetHeight)
					// console.log(this.$refs.glass.offsetWidth)
					this.glassH = this.$refs.glass.offsetHeight;
					this.glassW = this.$refs.glass.offsetWidth;
					// console.log(this.$refs.msk.offsetHeight)
					// console.log(this.$refs.msk.offsetWidth)
					this.mskH = this.$refs.msk.offsetHeight;
					this.mskW = this.$refs.msk.offsetWidth;
					// console.log(this.$refs.bigimg.offsetHeight)
					// console.log(this.$refs.bigimg.offsetWidth)
					this.bigH = this.$refs.bigimg.offsetHeight;
					this.bigW = this.$refs.bigimg.offsetWidth;
					this.left = e.x - e.offsetX;
					this.top = e.y - e.offsetY;
					// this.movemsk(e)
					// this.add
				})
			},
			move(e){
				this.movemsk(e);
			},
			movemsk(e){
				// console.log(e)
				let x = e.x - this.left;
				let y = e.y - this.top;
				// console.log(x,y)
				// 将限制蒙层区域限制在图片内
				this.maskl = x > this.mskH / 2 ? x > this.glassW - this.mskW /2 ? this.glassW - this.mskW : x - this.mskW / 2 : 0
				this.maskt = y > this.mskH / 2 ? y > this.glassH - this.mskH /2 ? this.glassH - this.mskH : y - this.mskH / 2 : 0
				this.bigt =0 - (this.maskt * this.bigH / this.glassH > this.bigH - this.glassH ? this.bigH - this.glassH : this.maskt * this.bigH / this.glassH) 
				this.bigl =0 - (this.maskl * this.bigW / this.glassW > this.bigW - this.glassW ? this.bigW - this.glassW : this.maskl * this.bigW / this.glassW)
				// console.log(this.maskl,this.maskt)
			}
		}

	}

</script>

<style>
	.glass{
		position: relative;
		width: 440px;
		height: 440px;
	}
	.glass-wrap{
		width: 440px;
		height: 440px;
		position: absolute;
	}
	.glass-img img{
		width: 100%;
		height: 100%;
	}
	.glass-img{
		position: relative;
	}
	.glass-img .msk{
		width: 180px;
		height: 180px;
		position: absolute;
	}
	.bigimg-box {
		width: 440px;
		height: 440px;
		position: absolute;
		top: 0;
		right: -460px;
		overflow: hidden;
		z-index: 999;
		background: #EFEFEF;
	}
	.bigimg-box img{
		position: absolute;
	}

</style>