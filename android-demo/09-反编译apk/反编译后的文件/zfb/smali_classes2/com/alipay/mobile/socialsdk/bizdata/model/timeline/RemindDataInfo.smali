.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;
.super Ljava/lang/Object;
.source "RemindDataInfo.java"


# instance fields
.field public feedInto:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

.field public fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field public remindInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

.field public toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 15
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->remindInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->remindInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->remindInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 18
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
