.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "VideoMediaInfo.java"


# instance fields
.field private h:I

.field private size:J

.field private thumb:Ljava/lang/String;

.field private time:I

.field private video:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->video:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->thumb:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->w:I

    .line 28
    iput p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->h:I

    .line 29
    iput p5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->time:I

    .line 30
    return-void
.end method


# virtual methods
.method public getH()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->h:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->size:J

    return-wide v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->time:I

    return v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->w:I

    return v0
.end method

.method public setH(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->h:I

    .line 70
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->size:J

    .line 78
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->thumb:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTime(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->time:I

    .line 54
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->video:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setW(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->w:I

    .line 62
    return-void
.end method
