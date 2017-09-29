.class public interface abstract Lmtopsdk/mtop/upload/service/UploadFileService;
.super Ljava/lang/Object;
.source "UploadFileService.java"


# virtual methods
.method public abstract fileUpload(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResumeOffset(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUploadToken(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/util/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadFileInfo;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resumeUpload(Lmtopsdk/mtop/upload/domain/UploadToken;J)Lmtopsdk/mtop/util/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            "J)",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadResult;",
            ">;"
        }
    .end annotation
.end method
