.class public Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;
.super Ljava/lang/Object;
.source "NFCBizProcessorManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;


# instance fields
.field private bizProcComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private bizProcessorEntity:[[Ljava/lang/String;

.field private nfcProcessorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private whiteListMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "NFC/BizProcessorManager"

    sput-object v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->bizProcessorEntity:[[Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;-><init>(Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->bizProcComparator:Ljava/util/Comparator;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->nfcProcessorMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->whiteListMap:Ljava/util/Map;

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessorStatic()V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->parse(Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parse(Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 221
    new-instance v0, Lcom/alipay/mobile/nfc/info/NfcType;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/alipay/mobile/nfc/info/NfcType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseNfcType(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->getInstance()Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    move-result-object v0

    const-string/jumbo v1, "NDEF"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->getAdapter(Ljava/lang/String;)Lcom/alipay/mobile/nfc/adapter/NFCAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nfc/adapter/NFCAdapter;->preLoad(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->getInstance()Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    move-result-object v0

    const-string/jumbo v1, "PBOC"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->getAdapter(Ljava/lang/String;)Lcom/alipay/mobile/nfc/adapter/NFCAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nfc/adapter/NFCAdapter;->preLoad(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    goto :goto_0
.end method

.method private registerBizProcessorStatic()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->bizProcessorEntity:[[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 73
    return-void

    .line 62
    :cond_0
    aget-object v0, v3, v1

    .line 63
    aget-object v5, v0, v2

    .line 64
    const/4 v6, 0x1

    aget-object v0, v0, v6

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;

    .line 67
    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getBaseBusinessProcessor(Lcom/alipay/mobile/nfc/info/NfcType;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nfc/info/NfcType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->nfcProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_1
    return-object v2

    .line 88
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    sget-object v1, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processorEntry: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 93
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 97
    sget-object v5, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "registered filter:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", matching filter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getFilterId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    :cond_3
    sget-object v4, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    .line 101
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 102
    sget-object v5, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "registered tech:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", matching tech:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getTechId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getTechId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    :cond_4
    sget-object v4, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    .line 106
    const/4 v4, 0x2

    aget-object v4, v1, v4

    .line 107
    sget-object v5, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "registered AID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", matching AID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    :cond_5
    sget-object v4, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    .line 111
    const/4 v4, 0x3

    aget-object v1, v1, v4

    .line 112
    sget-object v4, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registered biz:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", matching biz:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getBizId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/nfc/info/NfcType;->getBizId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :cond_6
    sget-object v1, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got a proc: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getWhiteList()Ljava/util/Map;
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
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->whiteListMap:Ljava/util/Map;

    return-object v0
.end method

.method public loadBizProcessor(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->loadNfcType(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->loadBizProcessor(Lcom/alipay/mobile/nfc/info/NfcType;)Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;

    move-result-object v0

    return-object v0
.end method

.method public loadBizProcessor(Lcom/alipay/mobile/nfc/info/NfcType;)Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->getBaseBusinessProcessor(Lcom/alipay/mobile/nfc/info/NfcType;)Ljava/util/List;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->bizProcComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;

    goto :goto_0
.end method

.method public loadNfcType(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->parseNfcType(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerBizProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->parse(Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid biz type value!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->nfcProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public registerWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->whiteListMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-void
.end method

.method public unregisterBizProcessor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->nfcProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public unregisterWhiteList(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->whiteListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method
