.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;
.super Ljava/lang/Object;
.source "LbsActivityDataInfo.java"


# instance fields
.field public activityId:Ljava/lang/String;

.field public addressName:Ljava/lang/String;

.field public theme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 27
    :cond_0
    if-nez p1, :cond_1

    .line 28
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 44
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
