.class public interface abstract Lcom/alipay/mobile/nebulacore/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field public static final OPT_MOBILE_ENABLE:I = 0x2

.field public static final OPT_WIFI_ENABLE:I = 0x1


# virtual methods
.method public abstract add(Ljava/lang/String;I)Z
.end method

.method public abstract cancel(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProgress(Ljava/lang/String;)I
.end method

.method public abstract getStatus(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
.end method

.method public abstract has(Ljava/lang/String;)Z
.end method

.method public abstract pause(Ljava/lang/String;)Z
.end method

.method public abstract resume(Ljava/lang/String;I)Z
.end method

.method public abstract setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V
.end method

.method public abstract setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V
.end method

.method public abstract size()I
.end method
