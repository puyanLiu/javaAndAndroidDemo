.class public Lcom/alipay/android/widgets/asset/model/WealthHomeModule;
.super Ljava/lang/Object;
.source "WealthHomeModule.java"


# instance fields
.field private extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private mainInfo:Ljava/lang/String;

.field private schema:Ljava/lang/String;

.field private secondaryInfo:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private useCache:Z

.field private widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->widgetId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->icon:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->title:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->mainInfo:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->secondaryInfo:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->schema:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public copy()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setWidgetId(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setIcon(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setTitle(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->mainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setMainInfo(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSecondaryInfo(Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->useCache:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setUseCache(Z)V

    .line 115
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->schema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSchema(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->extInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setExtInfos(Ljava/util/Map;)V

    .line 117
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setIconUrl(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method public getExtInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->extInfos:Ljava/util/Map;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->mainInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->schema:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->secondaryInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public isUseCache()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->useCache:Z

    return v0
.end method

.method public setExtInfos(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->extInfos:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->icon:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->iconUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setMainInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->mainInfo:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->schema:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSecondaryInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->secondaryInfo:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->title:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUseCache(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->useCache:Z

    .line 81
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->widgetId:Ljava/lang/String;

    .line 41
    return-void
.end method
