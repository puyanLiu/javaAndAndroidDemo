.class public Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;


# static fields
.field private static ParamPrefix:Ljava/lang/String;


# instance fields
.field private listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000042&sourceId=globalsearch&publicId="

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->ParamPrefix:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;-><init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;)V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->ParamPrefix:Ljava/lang/String;

    return-object v0
.end method

.method private registerQureyer()V
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 126
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 128
    const-string/jumbo v2, "publicplatform"

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->userId:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->registerQureyer()V

    .line 135
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 136
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
