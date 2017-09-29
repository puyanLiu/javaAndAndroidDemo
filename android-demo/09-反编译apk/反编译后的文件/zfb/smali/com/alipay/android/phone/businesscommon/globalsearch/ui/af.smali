.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;
.super Landroid/widget/BaseAdapter;
.source "SearchResultAdapter.java"


# static fields
.field private static g:J


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Lcom/alipay/android/phone/a/c/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->d:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    .line 125
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->c:Landroid/app/Activity;

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->f:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->d:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/alipay/android/phone/a/c/n;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/a/c/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->h:Lcom/alipay/android/phone/a/c/n;

    .line 53
    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 40
    sget-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    goto :goto_0
.end method

.method static synthetic a(J)V
    .locals 0

    .prologue
    .line 40
    sput-wide p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->g:J

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->e:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "item is null , position :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v1, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->d:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 104
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "typeMap is null , position :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , templateId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    :cond_2
    const-string/jumbo v2, "flybird"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " templateID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->h:Lcom/alipay/android/phone/a/c/n;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/alipay/android/phone/a/c/n;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a()I

    move-result v0

    return v0
.end method
