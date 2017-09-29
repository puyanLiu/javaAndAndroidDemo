.class public interface abstract Lcom/alipay/mobile/h5container/api/H5CoreNode;
.super Ljava/lang/Object;
.source "H5CoreNode.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5DataProvider;
.implements Lcom/alipay/mobile/h5container/api/H5Plugin;


# virtual methods
.method public abstract addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
.end method

.method public abstract getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;
.end method

.method public abstract getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
.end method

.method public abstract removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
.end method

.method public abstract sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
.end method
