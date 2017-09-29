.class public Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;
.super Lcom/alipay/android/app/template/service/DynamicTemplateService;
.source "DynamicTemplateServiceImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field public static final M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "5.0.2"

.field static final a:I

.field private static final b:Z

.field private static j:I

.field private static final k:I


# instance fields
.field private final c:Lcom/alipay/android/app/template/TemplateManager;

.field private d:Ljava/util/concurrent/ConcurrentMap;

.field private e:Ljava/util/concurrent/ConcurrentMap;

.field private f:Ljava/util/concurrent/ConcurrentMap;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b:Z

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    .line 81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 84
    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->k:I

    div-int/lit8 v0, v0, 0x28

    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a:I

    .line 92
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$1;

    .line 93
    sget v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a:I

    .line 92
    invoke-direct {v0, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$1;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;-><init>()V

    .line 73
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 74
    iput-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    iput-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    iput-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Z

    .line 78
    iput v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    .line 79
    iput v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Lcom/alipay/android/app/template/TemplateManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-static {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/HtmlGumboParser;->getInstance()Lcom/alipay/android/app/template/HtmlGumboParser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/template/HtmlGumboParser;->parseHtmlToJson(Ljava/lang/String;Lcom/alipay/android/app/template/HtmlGumboParser$Options;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 12

    .prologue
    .line 734
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    :cond_0
    const/4 v2, 0x0

    .line 969
    :cond_1
    return-object v2

    .line 738
    :cond_2
    const/4 v1, 0x0

    .line 739
    const/4 v4, 0x0

    .line 740
    if-eqz p3, :cond_20

    .line 741
    const-string/jumbo v0, "deferDownload"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 743
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, v0

    .line 746
    :cond_3
    const-string/jumbo v0, "ignore_version"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_20

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_20

    .line 748
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v5, v1

    .line 752
    :goto_0
    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Landroid/content/Context;)V

    .line 754
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 755
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 756
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 929
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 930
    if-eqz v5, :cond_1d

    .line 932
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 933
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 934
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 935
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplateCheckOverTime(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v3, v0

    .line 941
    :goto_2
    const-string/jumbo v0, "DynamicTemplateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleBirdResponse >>> downloadStatus="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 944
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 946
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 947
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 948
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 949
    sget-object v5, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1f

    .line 950
    :cond_5
    sget-object v5, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v1, v5, :cond_6

    .line 952
    sget-object v5, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-ne v1, v5, :cond_1e

    .line 953
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_6
    :goto_4
    const-string/jumbo v1, "DynamicTemplateService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleBirdResponse >>> status="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 756
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 757
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 759
    const-string/jumbo v6, "DynamicTemplateService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> handle tid="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 761
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 762
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "the tplId is null for "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 761
    invoke-static {v6, v0, v1, v7}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 765
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v6

    .line 766
    if-eqz v6, :cond_9

    const-string/jumbo v6, "/sdcard"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 767
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 768
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x0

    .line 766
    :goto_5
    if-eqz v6, :cond_e

    .line 770
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 771
    const-string/jumbo v6, "use template in html file from sdcard"

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 770
    invoke-static {v1, v6, v7, v9}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 773
    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v6, "handleBirdResponse >>> check sdcard File"

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    const-string/jumbo v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 780
    const-string/jumbo v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 781
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 783
    const-string/jumbo v0, "DynamicTemplateService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> tplId = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 785
    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    .line 786
    sget-object v7, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v7, v6, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-instance v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v7}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 788
    iput-object v6, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 789
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->html:Ljava/lang/String;

    .line 790
    iput-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 791
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "JSON"

    :goto_6
    iput-object v0, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 792
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v0

    .line 795
    const-string/jumbo v1, "DynamicTemplateService"

    .line 796
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> save template result="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 796
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 795
    invoke-static {v1, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    if-eqz v0, :cond_c

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_7
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 767
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 791
    :cond_b
    const-string/jumbo v0, "HTML"

    goto :goto_6

    .line 799
    :cond_c
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_7

    .line 802
    :cond_d
    const-string/jumbo v0, "DynamicTemplateService"

    .line 803
    const-string/jumbo v1, "handleBirdResponse >>> json from sdcard file is empty"

    .line 802
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 808
    :cond_e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 809
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 810
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 812
    const-string/jumbo v7, "the birdResponse is null, create birdParam for birdResponse"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 811
    invoke-static {v6, v7, v9, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 815
    :cond_f
    const-string/jumbo v6, "DynamicTemplateService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> birdParams="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 815
    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-class v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 820
    invoke-static {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v1

    .line 830
    :goto_8
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 831
    if-nez v1, :cond_12

    .line 833
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 834
    iget-object v6, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 833
    invoke-virtual {v1, v6, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 835
    if-eqz v1, :cond_10

    .line 836
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_10
    :goto_9
    if-nez v1, :cond_17

    .line 845
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 846
    const-string/jumbo v9, "local tpl is null"

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 845
    invoke-static {v6, v9, v10, v11}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    const-string/jumbo v6, "DynamicTemplateService"

    .line 849
    const-string/jumbo v9, "handleBirdResponse >>> localTpl is null"

    .line 848
    invoke-static {v6, v9}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v6, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 851
    iget-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 852
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 851
    iput-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 853
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 854
    invoke-virtual {v1, v7}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 855
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 856
    const-string/jumbo v9, "save template from server contains data"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 855
    invoke-static {v6, v9, v10, v11}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 857
    if-eqz v1, :cond_11

    .line 858
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v7}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_11
    const-string/jumbo v6, "DynamicTemplateService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> save = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    if-eqz v1, :cond_13

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_a
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 918
    :catch_0
    move-exception v1

    .line 919
    const-string/jumbo v6, "DynamicTemplateService"

    const-string/jumbo v7, "exception: "

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "StackTrace"

    invoke-interface {v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 922
    const-string/jumbo v7, "exception on handleBirdResponse"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 921
    invoke-static {v6, v7, v9, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 923
    sget-object v6, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    invoke-static {v1, v0, v6, v7, v9}, Lcom/alipay/android/app/template/Tracker;->buildLog(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    :catch_1
    move-exception v1

    .line 823
    :try_start_2
    const-string/jumbo v6, "DynamicTemplateService"

    const-string/jumbo v7, "exception: "

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 824
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "StackTrace"

    invoke-interface {v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 826
    const-string/jumbo v7, "exception on parse birdResponse"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    .line 825
    invoke-static {v6, v7, v1, v9}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 828
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 827
    invoke-static {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-object v7, v1

    goto/16 :goto_8

    .line 839
    :cond_12
    new-instance v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v6}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 840
    iget-object v9, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->c:Ljava/lang/String;

    iput-object v9, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    .line 841
    iget-object v9, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->d:Ljava/lang/String;

    iput-object v9, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    .line 842
    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    move-object v1, v6

    goto/16 :goto_9

    .line 864
    :cond_13
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto/16 :goto_a

    .line 866
    :cond_14
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 867
    const-string/jumbo v9, "add template from server without data to download list"

    const/4 v10, 0x0

    .line 866
    invoke-static {v6, v9, v0, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 868
    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/template/TemplateManager;->whetherNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 869
    iget-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 870
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    :goto_b
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 872
    :cond_15
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 877
    :cond_16
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 882
    :cond_17
    const-string/jumbo v6, "DynamicTemplateService"

    .line 883
    const-string/jumbo v9, "handleBirdResponse >>> localTpl is not null"

    .line 882
    invoke-static {v6, v9}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v6, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 885
    iget-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 886
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 885
    iput-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 888
    invoke-virtual {v1, v7}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 889
    const-string/jumbo v6, "DynamicTemplateService.handleBirdResponseInternal"

    .line 890
    const-string/jumbo v9, "save template from server contains data to update"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 889
    invoke-static {v6, v9, v10, v11}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 891
    if-eqz v1, :cond_18

    .line 892
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v7}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    :cond_18
    const-string/jumbo v6, "DynamicTemplateService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleBirdResponse >>> save = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 895
    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    if-eqz v1, :cond_19

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_c
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 898
    :cond_19
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_c

    .line 899
    :cond_1a
    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/template/TemplateManager;->whetherNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 902
    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v6, "handleBirdResponse >>> put in map"

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 904
    const-string/jumbo v6, "update template from server without data to download list"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 903
    invoke-static {v1, v6, v9, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 905
    iget-object v1, v7, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 906
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    :goto_d
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 908
    :cond_1b
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 913
    :cond_1c
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 914
    const-string/jumbo v6, "template exist"

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 913
    invoke-static {v1, v6, v7, v9}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 915
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 938
    :cond_1d
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;ZLjava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    .line 955
    :cond_1e
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 960
    :cond_1f
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 961
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 963
    if-eqz v1, :cond_4

    .line 964
    sget-object v5, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_20
    move v5, v1

    goto/16 :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 452
    iget-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Z

    if-nez v0, :cond_0

    .line 453
    iput-boolean v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Z

    .line 454
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)V

    .line 491
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 492
    const/4 v2, 0x0

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    aput-object v3, v1, v2

    .line 493
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    aput-object v2, v1, v4

    .line 495
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 498
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 448
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->clearCache(I)V

    .line 449
    return-void

    .line 422
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 424
    if-eqz v1, :cond_0

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 437
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 439
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 441
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 443
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 444
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 439
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/ITemplateDisposable;

    .line 440
    invoke-interface {v2}, Lcom/alipay/android/app/template/ITemplateDisposable;->destroy()V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1006
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    if-gez v0, :cond_0

    .line 1007
    const-string/jumbo v0, "alipay_msp_tag_view_holder"

    const-string/jumbo v1, "id"

    .line 1008
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 1007
    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    .line 1011
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    if-gez v0, :cond_1

    .line 1012
    const-string/jumbo v0, "tag_view_nav"

    const-string/jumbo v1, "id"

    .line 1013
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 1012
    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 1015
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/app/template/ITemplateDisposable;)V
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 551
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 559
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    return-void

    .line 557
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;I)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 519
    new-instance v2, Ljava/io/BufferedReader;

    .line 520
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 519
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 521
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 523
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_0

    .line 526
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 527
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 537
    const-string/jumbo v2, "DynamicTemplateService"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 530
    :catch_1
    move-exception v0

    .line 531
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 539
    :catch_2
    move-exception v0

    .line 542
    const-string/jumbo v2, "DynamicTemplateService"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public birdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public birdParams(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 674
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 675
    if-eqz v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    .line 678
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string/jumbo v2, "\"tplId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v2, "\"tplVersion\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string/jumbo v0, "\"platform\":\"android\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string/jumbo v2, "\"uid\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_2
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 696
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string/jumbo v2, "\"tplVersion\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string/jumbo v0, "\"platform\":\"android\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 702
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string/jumbo v2, "\"uid\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_4
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public callOnreload(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 4

    .prologue
    .line 564
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/ITemplateDisposable;

    .line 565
    if-eqz v0, :cond_1

    .line 566
    instance-of v1, v0, Lcom/flybird/FBView;

    if-eqz v1, :cond_0

    .line 567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    check-cast v0, Lcom/flybird/FBView;

    .line 569
    invoke-virtual {v0}, Lcom/flybird/FBView;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flybird/FBDocument;->reloadData(Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 577
    :goto_0
    return-object v0

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reload against View: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    const-string/jumbo v2, " is not supported any more!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 418
    return-void
.end method

.method public destoryView(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1077
    if-nez p2, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1080
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    .line 1082
    check-cast v0, Lcom/alipay/android/app/template/ITemplateDisposable;

    .line 1083
    invoke-interface {v0}, Lcom/alipay/android/app/template/ITemplateDisposable;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1084
    invoke-interface {v0}, Lcom/alipay/android/app/template/ITemplateDisposable;->getContextHashCode()I

    move-result v1

    .line 1085
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1086
    if-eqz v1, :cond_1

    .line 1087
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1089
    :cond_1
    invoke-interface {v0}, Lcom/alipay/android/app/template/ITemplateDisposable;->destroy()V

    .line 1092
    :cond_2
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1093
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public generateListAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;
    .locals 1

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/template/service/TplListAdapter;->from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public generateRecycleAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;
    .locals 1

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .prologue
    .line 380
    .line 381
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 380
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    .line 382
    const-string/jumbo v2, "DynamicTemplateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "view generated: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-object v1

    .line 382
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 303
    sget-boolean v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "flybird generateView"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    .line 304
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 305
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a()V

    .line 308
    if-eqz p3, :cond_8

    .line 309
    new-instance v0, Lcom/alipay/android/app/template/DtmElementClickListener;

    invoke-direct {v0, p3, p2, p4}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    move-object v1, v0

    .line 313
    :goto_0
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 314
    if-nez v0, :cond_7

    .line 315
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1, p5}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 317
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    .line 318
    sget-object v2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 336
    :goto_2
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, v2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v3, "HTML"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->b:Ljava/lang/String;

    move-object v2, v0

    :goto_3
    if-nez p6, :cond_6

    new-instance v0, Lcom/flybird/FBDocument;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p5, v2, v3}, Lcom/flybird/FBDocument;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p6, Landroid/widget/FrameLayout;

    invoke-direct {p6, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_4
    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v2

    invoke-direct {p0, p5, v2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Landroid/content/Context;Lcom/alipay/android/app/template/ITemplateDisposable;)V

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setOnTemplateListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 339
    sget-boolean v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "flybird generateView"

    const-string/jumbo v1, "generateView done"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, p6

    .line 341
    :goto_5
    return-object v2

    .line 320
    :cond_3
    const-string/jumbo v0, "DynamicTemplateService.generateView"

    .line 321
    const-string/jumbo v1, "template is not exist"

    .line 320
    invoke-static {v0, v1, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 333
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 334
    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 338
    :cond_5
    iget-object v0, v2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flybird/FBDocument;->reloadData(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public generateViewForUnreusePageWithKeyboard(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/TemplateKeyboardService;Lcom/alipay/android/app/template/TemplatePasswordService;Z)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1163
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBDocument;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p6}, Lcom/flybird/FBDocument;->setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V

    invoke-virtual {v0, p7}, Lcom/flybird/FBDocument;->setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v5}, Lcom/flybird/FBView;->getOpacity()F

    move-result v5

    invoke-static {v1, v5}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->showAutoFocusInputKeyboard()V

    iget v5, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v5, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Landroid/content/Context;Lcom/alipay/android/app/template/ITemplateDisposable;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "oppo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v6, "N1T"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "samsung"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, "GT-I9508"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    move-object v0, v1

    .line 1165
    :goto_0
    const-string/jumbo v1, "DynamicTemplateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "quickpay new engine generateView time "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "msms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public getBirdNestEnv()Ljava/util/Map;
    .locals 3

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a()V

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "5.0.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-object v0
.end method

.method public getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateById(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 713
    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 714
    :cond_0
    const-string/jumbo v0, "DynamicTemplateService"

    const-string/jumbo v2, "context is invalid!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v0, "DynamicTemplateService.handleBirdResponse"

    .line 716
    const-string/jumbo v2, "input map is null or empty"

    .line 715
    invoke-static {v0, v2, v1, v1}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v1

    .line 721
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    .line 719
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 720
    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public handleBirdResponse(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleBirdResponseAsync(Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
    .locals 2

    .prologue
    .line 975
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "response is empty(value:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    if-nez p1, :cond_1

    const-string/jumbo v0, "Null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 977
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 980
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Landroid/content/Context;)V

    .line 981
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$4;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 993
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 994
    return-void
.end method

.method public handleBirdResponseForUnreusePage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Ljava/lang/String;ZZ)Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
    .locals 12

    .prologue
    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1024
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1027
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1029
    const-string/jumbo v5, "ignore_version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string/jumbo v5, "deferDownload"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, p4

    invoke-direct {p0, v3, v0, v4}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 1033
    const-string/jumbo v3, "DynamicTemplateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "quickpay  handleBirdResponseInternal time "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1035
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 1037
    iget-object v2, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v3, "HTML"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    iget-object v4, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->b:Ljava/lang/String;

    .line 1044
    :goto_0
    new-instance v6, Lcom/alipay/android/app/template/DtmElementClickListener;

    .line 1045
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 1044
    invoke-direct {v6, p3, v1, v2}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "var flybird = flybird || {}; flybird.rpcData ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1047
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .line 1050
    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/DtmElementClickListener;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1062
    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    .line 1064
    const-string/jumbo v1, "DynamicTemplateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "quickpay new engine handle bird response time "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "msms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 1069
    if-eqz v9, :cond_0

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1070
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 1072
    :cond_0
    return-object v1

    .line 1041
    :cond_1
    iget-object v4, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public launchPage(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 274
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string/jumbo v0, "tplId"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "operationType"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "operationParams"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "template_time"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "pageData"

    .line 280
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p4, "{}"

    .line 279
    :cond_0
    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "cacheStrategy"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v2

    move-object v0, p1

    .line 284
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 283
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/action/TplController;->setDynamicApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 285
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v0

    invoke-virtual {v0, v1, p7, p1}, Lcom/alipay/android/app/template/action/TplController;->loadTemplate(Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 286
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 296
    :goto_0
    return-object v0

    .line 287
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_2

    .line 288
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v2

    move-object v0, p1

    .line 289
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 288
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/action/TplController;->setDynamicApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 290
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v0

    invoke-virtual {v0, v1, p7, p1}, Lcom/alipay/android/app/template/action/TplController;->loadTemplate(Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 291
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0

    .line 293
    :cond_2
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 998
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/ITemplateDisposable;

    .line 999
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/ITemplateDisposable;->hiddenKeyboardService(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/android/app/template/ITemplateDisposable;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onPayFinish(ILandroid/content/Context;)Ljava/util/List;
    .locals 2

    .prologue
    .line 1098
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->clearCache(I)V

    .line 1099
    if-lez p1, :cond_0

    .line 1100
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(I)V

    .line 1102
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$6;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->triggerTemplateUpdate(Landroid/content/Context;Lcom/alipay/android/app/template/service/DynamicTemplateService$TplFilter;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    sget-object v1, Lcom/alipay/android/app/template/Tracker;->QUICKPAY_LOG_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1110
    sget-object v1, Lcom/alipay/android/app/template/Tracker;->QUICKPAY_LOG_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1111
    return-object v0
.end method

.method public onQuikpayActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method public preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, v0, p3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    return-object v0
.end method

.method public preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Landroid/content/Context;)V

    .line 182
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 226
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_8

    .line 228
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v0, v4, :cond_8

    move v0, v2

    .line 229
    :goto_1
    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 237
    :cond_1
    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 238
    :goto_3
    const-string/jumbo v1, "DynamicTemplateService.preLoadTemplate"

    .line 239
    const-string/jumbo v2, "download result"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v1, v2, v3, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    :goto_4
    return-object v0

    .line 183
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_4

    .line 188
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    .line 189
    if-eqz v1, :cond_4

    const-string/jumbo v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 192
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v6}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 194
    iput-object v0, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 195
    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 196
    const-string/jumbo v1, ""

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 197
    const-string/jumbo v1, "JSON"

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    .line 204
    :cond_4
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_6

    iget-object v6, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 208
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    const-string/jumbo v6, ""

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v6, "DynamicTemplateService"

    const-string/jumbo v7, "exception: "

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "StackTrace"

    invoke-interface {v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const-string/jumbo v1, "DynamicTemplateService.preLoadTemplate"

    .line 220
    const-string/jumbo v6, "exception while getLocalTemplate"

    .line 219
    invoke-static {v1, v6, v0, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 200
    :cond_5
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_4

    .line 209
    :cond_6
    if-eqz v1, :cond_7

    .line 210
    :try_start_1
    iget-object v6, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    .line 211
    invoke-virtual {v6, v1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 213
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move v0, v3

    .line 228
    goto/16 :goto_1

    .line 231
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v4, :cond_a

    move v0, v2

    .line 233
    :goto_5
    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_a
    move v0, v3

    .line 232
    goto :goto_5

    .line 237
    :cond_b
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_NETWORK_NOT_AVAILABLE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_3

    .line 242
    :cond_c
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_4
.end method

.method public resetViewData(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 389
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/flybird/FBView;

    if-eqz v1, :cond_0

    .line 394
    check-cast v0, Lcom/flybird/FBView;

    .line 395
    invoke-virtual {v0}, Lcom/flybird/FBView;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->reloadData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveTemplates(Ljava/util/List;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 1

    .prologue
    .line 582
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 586
    :goto_0
    return-object v0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplates(Ljava/util/List;)Ljava/util/Map;

    .line 586
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public triggerTemplateUpdate(Landroid/content/Context;Lcom/alipay/android/app/template/service/DynamicTemplateService$TplFilter;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 6

    .prologue
    .line 591
    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v4, v0

    .line 598
    :goto_0
    if-nez v4, :cond_1

    .line 599
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 644
    :goto_1
    return-object v0

    .line 595
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const-string/jumbo v1, "android-phone-wallet-phonecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v4, v0

    .line 595
    goto :goto_0

    .line 602
    :cond_1
    if-nez p2, :cond_2

    .line 604
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 616
    :goto_2
    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;

    invoke-direct {v1, p0, v0, v4}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/Map;Landroid/content/res/Resources;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 644
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_1

    .line 606
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 607
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 608
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TplFilter;->accept(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
