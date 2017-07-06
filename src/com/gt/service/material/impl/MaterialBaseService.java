package com.gt.service.material.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.gt.service.material.IMaterialMainService;

public abstract class MaterialBaseService {

	@Autowired
	protected IMaterialMainService materialMainService;
	
	@Value("${material_images_url}")
	protected String imagePath; // 图片的存放路径

	@Value("${get_images_url}")
	protected String getImageUrl; // 图片素材获取路径
	
	@Value("${material_audio_url}")
	protected String audioPath; // 音频的存放路径

	@Value("${get_audio_url}")
	protected String getAudioUrl; // 音频素材获取路径
	
	@Value("${material_video_url}")
	protected String videoPath; // 视频的存放路径
	
	@Value("${get_video_url}")
	protected String getVideoUrl; // 视频素材获取路径
	
}
