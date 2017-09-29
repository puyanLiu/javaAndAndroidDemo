.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "MultiMediaMessageInfo.java"


# instance fields
.field private clientMsgId:Ljava/lang/String;

.field private createTime:J

.field private h:F

.field private i:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private side:I

.field private size:I

.field private templateCode:Ljava/lang/String;

.field private time:I

.field private video:Ljava/lang/String;

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->clientMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->createTime:J

    return-wide v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public getI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSide()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->side:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->size:I

    return v0
.end method

.method public getTemplateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->templateCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->time:I

    return v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->w:F

    float-to-int v0, v0

    return v0
.end method

.method public setClientMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->clientMsgId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->createTime:J

    .line 137
    return-void
.end method

.method public setH(F)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->h:F

    .line 97
    return-void
.end method

.method public setI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->i:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->s:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSide(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->side:I

    .line 129
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->size:I

    .line 113
    return-void
.end method

.method public setTemplateCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->templateCode:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTime(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->time:I

    .line 105
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->video:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setW(F)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->w:F

    .line 89
    return-void
.end method
