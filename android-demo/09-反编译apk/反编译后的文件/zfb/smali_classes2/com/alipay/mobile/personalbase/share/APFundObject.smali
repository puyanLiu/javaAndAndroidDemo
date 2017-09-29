.class public Lcom/alipay/mobile/personalbase/share/APFundObject;
.super Ljava/lang/Object;
.source "APFundObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field public code:Ljava/lang/String;

.field public dayIncrease:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:J

.field public tip1:Ljava/lang/String;

.field public tip2:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

.field public webpageUrl:Ljava/lang/String;

.field public weekIncrease:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x7a

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->webpageUrl:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->tag:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->title:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->code:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_PRICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->price:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_SUBTXT1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->tip1:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_SUBTXT2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->tip2:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_DAY_INCREASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->dayIncrease:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_WEEK_INCREASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->weekIncrease:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->time:J

    .line 62
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->time:J

    .line 64
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_UI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-class v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APFundObject;->ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

    .line 66
    return-void
.end method
