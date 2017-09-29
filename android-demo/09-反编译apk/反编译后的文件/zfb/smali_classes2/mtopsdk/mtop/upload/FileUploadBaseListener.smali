.class public interface abstract Lmtopsdk/mtop/upload/FileUploadBaseListener;
.super Ljava/lang/Object;
.source "FileUploadBaseListener.java"

# interfaces
.implements Lmtopsdk/mtop/upload/FileUploadListener;


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onStart()V
.end method
