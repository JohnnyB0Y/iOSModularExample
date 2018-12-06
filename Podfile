#source 'https://github.com/CocoaPods/Specs.git'

platform :ios, ‘12.0’
use_frameworks!
inhibit_all_warnings!

def pods
    pod "AGCategories"
end

def pod_home_actions
    pod "HomeActions", :path => "./HomeModuleActionsPod/"
end

def pod_page_actions
    pod "PageActions", :path => "./PageModuleActionsPod/"
end

def pod_home_target
    pod "HomeTarget", :path => "./HomeCTMediatorPod/"
end

def pod_page_target
    pod "PageTarget", :path => "./HomeCTMediatorPod/"
end

target 'BeeHiveExample' do
	pod "BeeHive"
	
	# 本地pod
    pod "HomeBeeHive", :path => "./HomeBeeHivePod/"
    pod "PageBeeHive", :path => "./HomeBeeHivePod/"
end

target 'CTMediatorExample' do
	pod "CTMediator"
    
    pod_home_actions
    pod_page_actions
    pods
end

target 'HomeBeeHivePod' do
	pod "BeeHive"
    
    pods
end

target 'HomeCTMediatorPod' do
	pod "CTMediator"
    
    pods
end

target 'HomeModuleActionsPod' do
	pod "CTMediator"
	
    pod_home_target
    pods
end

target 'PageModuleActionsPod' do
	pod "CTMediator"
    
	pod_page_target
    pods
end
