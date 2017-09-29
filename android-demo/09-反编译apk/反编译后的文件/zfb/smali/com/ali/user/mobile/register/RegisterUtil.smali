.class public Lcom/ali/user/mobile/register/RegisterUtil;
.super Ljava/lang/Object;
.source "RegisterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillData(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v1, v3

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 60
    return-object v6

    .line 31
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;

    .line 32
    iget-object v7, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->countryCodeList:Ljava/util/List;

    move v5, v3

    move v4, v1

    .line 33
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_1

    .line 30
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;

    .line 35
    new-instance v8, Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {v8}, Lcom/ali/user/mobile/register/RegionInfo;-><init>()V

    .line 36
    iget-object v9, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->index:Ljava/lang/String;

    const-string/jumbo v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v9

    sget v10, Lcom/ali/user/mobile/security/ui/R$string;->choice_region_shortcut:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mCharacter:Ljava/lang/String;

    .line 38
    const-string/jumbo v9, "\u2605"

    iput-object v9, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->index:Ljava/lang/String;

    .line 42
    :goto_2
    if-nez v5, :cond_4

    .line 43
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->isDisplayLetter:Z

    .line 44
    iget-object v9, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->index:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v9, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->index:Ljava/lang/String;

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_3
    iget-object v9, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;->country:Ljava/lang/String;

    iput-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mRegionName:Ljava/lang/String;

    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 51
    iget-object v9, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;->domain:Ljava/lang/String;

    iput-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    .line 52
    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;->regular:Ljava/lang/String;

    iput-object v1, v8, Lcom/ali/user/mobile/register/RegionInfo;->mRegularExpression:Ljava/lang/String;

    .line 53
    iget-object v1, v8, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "CN"

    iget-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, v8, Lcom/ali/user/mobile/register/RegionInfo;->mRegularExpression:Ljava/lang/String;

    sput-object v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPattern:Ljava/lang/String;

    .line 56
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    .line 40
    :cond_3
    iget-object v9, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;->index:Ljava/lang/String;

    iput-object v9, v8, Lcom/ali/user/mobile/register/RegionInfo;->mCharacter:Ljava/lang/String;

    goto :goto_2

    .line 47
    :cond_4
    iput-boolean v3, v8, Lcom/ali/user/mobile/register/RegionInfo;->isDisplayLetter:Z

    goto :goto_3
.end method

.method public static goRegistActivity(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string/jumbo v1, "flag"

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
