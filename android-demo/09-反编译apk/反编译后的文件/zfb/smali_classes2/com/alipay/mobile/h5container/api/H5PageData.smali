.class public Lcom/alipay/mobile/h5container/api/H5PageData;
.super Ljava/lang/Object;
.source "H5PageData.java"


# static fields
.field public static final DEFAULT_ERROR_CODE:I = 0x1b58

.field public static final TAG:Ljava/lang/String; = "H5PageData"

.field public static walletServiceStart:J


# instance fields
.field public appear:J

.field public appearFromNative:J

.field public complete:J

.field public cssLoadNum:I

.field public cssLoadSize:J

.field public cssReqNum:I

.field public cssSize:J

.field public end:J

.field public errorCode:I

.field public etype:Ljava/lang/String;

.field public firstByte:J

.field public htmlLoadSize:J

.field public htmlSize:J

.field public imgLoadNum:I

.field public imgLoadSize:J

.field public imgReqNum:I

.field public imgSize:J

.field public jsLoadNum:I

.field public jsLoadSize:J

.field public jsReqNum:I

.field public jsSize:J

.field public navUrl:Ljava/lang/String;

.field public num1000:I

.field public num300:I

.field public num302:I

.field public num304:I

.field public num400:I

.field public num404:I

.field public num500:I

.field public otherLoadNum:I

.field public otherLoadSize:J

.field public otherReqNum:I

.field public otherSize:J

.field public pageIndex:I

.field public pageLoadSize:J

.field public pageNetLoad:J

.field public pageSize:J

.field public pageUrl:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public referUrl:Ljava/lang/String;

.field public referer:Ljava/lang/String;

.field public requestLoadNum:I

.field public requestNum:I

.field public serverResponse:J

.field public sizeLimit200:I

.field public sizeLimit50:I

.field public sizeLoadLimit200:I

.field public sizeLoadLimit50:I

.field public start:J

.field public statusCode:I

.field public stype:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private urlList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public visible:Ljava/lang/String;

.field public webViewIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->clear()V

    .line 50
    return-void
.end method

.method private getEndType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "nav"

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string/jumbo v0, "pause"

    goto :goto_0
.end method

.method private getStartType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "open"

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->referUrl:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v1, "nav"

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->referUrl:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v1, "resume"

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->urlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->referUrl:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit200:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit200:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit50:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit50:I

    .line 54
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->requestNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherReqNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgReqNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsReqNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssReqNum:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageIndex:I

    .line 56
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssSize:J

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->etype:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->stype:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->requestLoadNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadNum:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadNum:I

    .line 59
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num1000:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num500:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num400:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num404:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num300:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num304:I

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->num302:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    .line 61
    const/16 v0, 0x1b58

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    .line 62
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->end:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->firstByte:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    .line 63
    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadSize:J

    iput-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageLoadSize:J

    .line 64
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->visible:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->proxy:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public onPageEnded(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->end:J

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getEndType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->etype:Ljava/lang/String;

    .line 85
    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 86
    const-string/jumbo v0, "Y"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->visible:Ljava/lang/String;

    .line 90
    :goto_1
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->etype:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->visible:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStartType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->stype:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "^visible=Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^appear="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^complete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^stype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->stype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^etype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->etype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^proxy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^referer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->referer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, "^xurl=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^pageSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
