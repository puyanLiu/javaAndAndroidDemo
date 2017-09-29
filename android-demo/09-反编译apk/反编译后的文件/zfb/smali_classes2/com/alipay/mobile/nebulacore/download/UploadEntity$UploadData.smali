.class Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;
.super Ljava/io/DataOutputStream;
.source "UploadEntity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadData"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/download/UploadEntity;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    .line 120
    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    iget-wide v0, p1, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->d:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->c:J

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->d:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->b:J

    .line 124
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 7

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 130
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->c:J

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    iget-wide v0, v0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->b:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->c:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    iget-wide v2, v2, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->c:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 138
    iget-wide v3, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->b:J

    sub-long v3, v1, v3

    .line 140
    iget v5, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->d:I

    if-le v0, v5, :cond_0

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 144
    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->d:I

    .line 145
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->b:J

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->a:Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->b:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->d:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TransferListener;->onProgress(I)V

    goto :goto_0
.end method
