.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5AppProvider;
.super Ljava/lang/Object;
.source "H5AppProvider.java"


# virtual methods
.method public abstract downloadApp(Ljava/lang/String;)V
.end method

.method public abstract getExtra(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getH5AppCdnBaseUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstallPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract installApp(Ljava/lang/String;)V
.end method

.method public abstract isAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isH5App(Ljava/lang/String;)Z
.end method

.method public abstract isInstalled(Ljava/lang/String;)Z
.end method
