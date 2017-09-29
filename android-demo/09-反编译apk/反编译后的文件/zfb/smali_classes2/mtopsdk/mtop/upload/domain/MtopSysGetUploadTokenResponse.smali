.class public Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "MtopSysGetUploadTokenResponse.java"


# instance fields
.field private data:Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponse;->getData()Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponse;->data:Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;

    return-object v0
.end method

.method public setData(Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponse;->data:Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;

    .line 36
    return-void
.end method
