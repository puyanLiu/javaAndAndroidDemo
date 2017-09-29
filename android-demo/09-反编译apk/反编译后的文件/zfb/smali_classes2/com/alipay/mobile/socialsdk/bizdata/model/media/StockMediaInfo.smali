.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "StockMediaInfo.java"


# instance fields
.field private change:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private percent:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private status:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->change:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->time:J

    return-wide v0
.end method

.method public setChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->change:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->image:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->percent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->price:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->status:I

    .line 79
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->time:J

    .line 63
    return-void
.end method
