.class public Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;
.super Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;
.source "CitySelectServiceImpl.java"


# instance fields
.field private callBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

.field private mProvinceCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;-><init>()V

    return-void
.end method


# virtual methods
.method public callCitySelect(Lcom/alipay/mobile/beehive/cityselect/model/CityVO;Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;",
            "Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p4, p0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->callBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 29
    const-class v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "from"

    .line 33
    const/4 v2, 0x3

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v1, "extraTitleName"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_0
    if-eqz p1, :cond_3

    .line 40
    const-string/jumbo v1, "currentCity"

    iget-object v2, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "currentAdCode"

    iget-object v2, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "currentProvince"

    iget-object v2, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "currentProvince"

    iget-object v2, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "currentCityVisible"

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    .line 55
    iput-object p2, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 56
    const-string/jumbo v2, "cityList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    .line 60
    iput-object p3, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 61
    const-string/jumbo v2, "hotCityList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    :cond_2
    const-string/jumbo v1, "hotCityVisible"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 72
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 70
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 73
    return-void

    .line 49
    :cond_3
    const-string/jumbo v1, "currentCityVisible"

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public callProvinceCitySelect(Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;)V
    .locals 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->mProvinceCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string/jumbo v1, "isFromService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public getCallBack()Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->callBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    return-object v0
.end method

.method public getProvinceCallBack()Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectServiceImpl;->mProvinceCallBack:Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;

    return-object v0
.end method
