.class public Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field private final listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxstatic/biz/a;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->createQueryParams(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->createPlaceholders(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createPlaceholders(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    if-gtz p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No placeholders"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    const-string/jumbo v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x1

    :goto_0
    if-lt v0, p0, :cond_1

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1
    const-string/jumbo v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static createQueryParams(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 154
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v2, v0

    .line 155
    return-object v2

    .line 152
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 151
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private registerQureyer()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 121
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 120
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    const-string/jumbo v2, "message_box"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->userId:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->registerQureyer()V

    .line 129
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getHelperInstance()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 130
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
