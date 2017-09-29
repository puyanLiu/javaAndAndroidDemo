.class public Lcom/aps/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aps/l;


# static fields
.field private static final synthetic P:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:Lcom/aps/n;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Lcom/aps/aa;

.field private J:Ljava/lang/StringBuilder;

.field private K:Z

.field private L:J

.field private M:Lcom/aps/d;

.field private N:Landroid/telephony/CellLocation;

.field private O:Z

.field a:Lcom/aps/f;

.field b:I

.field c:Z

.field d:Lcom/aps/b$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/StringBuilder;

.field g:Ljava/util/TimerTask;

.field h:Ljava/util/Timer;

.field i:Lcom/aps/ai;

.field j:I

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Landroid/net/ConnectivityManager;

.field private n:Landroid/net/wifi/WifiManager;

.field private o:Lcom/aps/m;

.field private p:Landroid/telephony/TelephonyManager;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aps/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Landroid/telephony/PhoneStateListener;

.field private v:I

.field private w:Lcom/aps/b$b;

.field private x:Landroid/net/wifi/WifiInfo;

.field private y:Lorg/json/JSONObject;

.field private z:Lcom/aps/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "APS.java"

    const-class v2, Lcom/aps/b;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startScan"

    const-string/jumbo v3, "android.net.wifi.WifiManager"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x799

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/b;->P:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    iput-object v1, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/aps/b;->o:Lcom/aps/m;

    iput-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    iput-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/b;->v:I

    new-instance v0, Lcom/aps/b$b;

    invoke-direct {v0, p0, p0, v1}, Lcom/aps/b$b;-><init>(Lcom/aps/b;Lcom/aps/b;Lcom/aps/b$1;)V

    iput-object v0, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    iput-object v1, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    iput-wide v3, p0, Lcom/aps/b;->A:J

    iput-boolean v2, p0, Lcom/aps/b;->B:Z

    iput-wide v3, p0, Lcom/aps/b;->C:J

    iput-wide v3, p0, Lcom/aps/b;->D:J

    iput-wide v3, p0, Lcom/aps/b;->E:J

    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->F:Lcom/aps/n;

    iput v2, p0, Lcom/aps/b;->G:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->J:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->K:Z

    iput-wide v3, p0, Lcom/aps/b;->L:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/b;->b:I

    iput-boolean v2, p0, Lcom/aps/b;->c:Z

    iput-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    new-instance v0, Lcom/aps/b$a;

    invoke-direct {v0, p0}, Lcom/aps/b$a;-><init>(Lcom/aps/b;)V

    iput-object v0, p0, Lcom/aps/b;->d:Lcom/aps/b$a;

    iput-object v1, p0, Lcom/aps/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    iput-boolean v2, p0, Lcom/aps/b;->O:Z

    iput v2, p0, Lcom/aps/b;->j:I

    return-void
.end method

.method static synthetic a(Lcom/aps/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/b;->D:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/b;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a([B)Lcom/aps/c;
    .locals 4

    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/aps/o;

    invoke-direct {v0}, Lcom/aps/o;-><init>()V

    invoke-static {}, Lcom/aps/v;->b()J

    iget-object v1, p0, Lcom/aps/b;->F:Lcom/aps/n;

    iget-object v2, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2, v3}, Lcom/aps/n;->a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aps/v;->b()J

    :try_start_0
    invoke-static {v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/aps/o;->a(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    invoke-static {v0}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/aps/v;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/aps/v;->a(I)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static final synthetic a(Landroid/net/wifi/WifiManager;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v15

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/aps/b;->r:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 10

    const v9, 0xfffffff

    const v8, 0xffff

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v7, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "case 2,gsm illegal"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v7, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v8, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-lt v1, v9, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-le v1, v8, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_1

    :cond_7
    iput v3, p0, Lcom/aps/b;->l:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v4, Lcom/aps/e;

    invoke-direct {v4}, Lcom/aps/e;-><init>()V

    iget-object v5, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    iput-object v6, v4, Lcom/aps/e;->a:Ljava/lang/String;

    aget-object v5, v5, v3

    iput-object v5, v4, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    iput v5, v4, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/aps/e;->d:I

    iget v5, p0, Lcom/aps/b;->v:I

    iput v5, v4, Lcom/aps/e;->j:I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-ne v1, v7, :cond_a

    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-le v1, v8, :cond_c

    move v1, v2

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v7, :cond_d

    move v1, v2

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v8, :cond_f

    move v1, v2

    goto :goto_3

    :cond_f
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-lt v1, v9, :cond_10

    move v1, v2

    goto :goto_3

    :cond_10
    move v1, v3

    goto :goto_3

    :cond_11
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aps/b;I)V
    .locals 2

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/aps/b;->v:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/aps/b;->v:I

    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    iget v1, p0, Lcom/aps/b;->v:I

    iput v1, v0, Lcom/aps/e;->j:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/aps/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v4, "*"

    const-string/jumbo v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x1d

    if-le v0, v4, :cond_6

    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/b;)Z
    .locals 4

    iget-wide v0, p0, Lcom/aps/b;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/b;->C:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/b;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/aps/b;)I
    .locals 1

    iget v0, p0, Lcom/aps/b;->l:I

    return v0
.end method

.method static synthetic b(Lcom/aps/b;I)I
    .locals 0

    iput p1, p0, Lcom/aps/b;->v:I

    return p1
.end method

.method static synthetic b(Lcom/aps/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/b;->C:J

    return-wide p1
.end method

.method private static b(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_10

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    :try_start_0
    const-string/jumbo v3, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    if-lez v6, :cond_e

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_3
    const-string/jumbo v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_b

    move v0, v6

    move-object v2, v7

    :goto_4
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object v7, v2

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    goto :goto_2

    :cond_6
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x4

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x2

    if-ne v6, v3, :cond_9

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_9
    const/4 v3, 0x3

    if-ne v6, v3, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_a
    const/4 v3, 0x4

    if-ne v6, v3, :cond_3

    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x4

    if-ne v6, v0, :cond_c

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string/jumbo v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v7

    :goto_5
    const/4 v2, 0x4

    if-eq v6, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x3

    if-ne v6, v0, :cond_d

    :try_start_5
    const-string/jumbo v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v3, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    :cond_d
    :try_start_7
    const-string/jumbo v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v3, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    :cond_e
    move v0, v6

    move-object v2, v7

    goto/16 :goto_4

    :catch_0
    move-exception v2

    move-object v2, v7

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move v0, v6

    move-object v2, v7

    goto/16 :goto_4

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    move v0, v6

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move v0, v6

    goto/16 :goto_4

    :cond_f
    move-object v2, v7

    goto/16 :goto_4

    :cond_10
    move v6, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_5
.end method

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 5

    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/aps/v;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-lt v2, v3, :cond_2

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/aps/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/b;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/aps/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/b;->E:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aps/b;I)V
    .locals 4

    const v2, 0x282fffff

    const v1, 0x42fffff

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/aps/b;->f()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/16 v3, 0x300

    invoke-virtual {v0, v3}, Lcom/aps/aa;->a(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/aps/b;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v1}, Lcom/aps/aa;->d()Lcom/aps/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    iget-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    invoke-virtual {v1}, Lcom/aps/ai;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/aps/b;->F:Lcom/aps/n;

    iget-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/aps/n;->a([BLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    iget-object v2, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/aps/b;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/aps/b;->s()V

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/aps/b;->r()V

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/aps/b;->l()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const v0, 0x7c2fffff

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/aps/b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aps/b;->j:I

    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    iget-object v2, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/aps/b;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/aps/b;->j:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/aps/b;->r()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/aps/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/b;->B:Z

    return p1
.end method

.method static synthetic d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic e(Lcom/aps/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/aps/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/b;->m()V

    return-void
.end method

.method private g()Ljava/lang/StringBuilder;
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/aps/b;->q()V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move v3, v2

    move v4, v2

    :goto_2
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/aps/b;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v0, "access"

    move v4, v5

    :cond_4
    const-string/jumbo v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_0
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    const-string/jumbo v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string/jumbo v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_a
    return-object v6

    :cond_b
    invoke-direct {p0}, Lcom/aps/b;->m()V

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic g(Lcom/aps/b;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/aps/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/b;->n()V

    return-void
.end method

.method private declared-synchronized h()[B
    .locals 17

    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/aps/q;

    invoke-direct {v8}, Lcom/aps/q;-><init>()V

    const-string/jumbo v6, "0"

    const-string/jumbo v9, "0"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v1, ""

    sput-object v1, Lcom/aps/g;->c:Ljava/lang/String;

    const-string/jumbo v5, ""

    const-string/jumbo v1, ""

    const-string/jumbo v4, ""

    const-string/jumbo v13, "1.4.0"

    const-string/jumbo v2, "version"

    invoke-static {v2}, Lcom/aps/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/aps/b;->l:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v7, v0, :cond_12

    const-string/jumbo v6, "1"

    move-object v7, v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/aps/g;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "888888888888888"

    sget-object v16, Lcom/aps/g;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/core/c;->c()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/aps/g;->a:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string/jumbo v6, "888888888888888"

    sput-object v6, Lcom/aps/g;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    sget-object v6, Lcom/aps/g;->b:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string/jumbo v6, "888888888888888"

    sget-object v16, Lcom/aps/g;->b:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/amap/api/location/core/c;->d()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/aps/g;->b:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string/jumbo v6, "888888888888888"

    sput-object v6, Lcom/aps/g;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    :goto_3
    :try_start_5
    invoke-static {v6}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v6

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/aps/n;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "2"

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x1

    aget-object v6, v6, v16

    iput-object v7, v8, Lcom/aps/q;->i:Ljava/lang/String;

    iput-object v9, v8, Lcom/aps/q;->j:Ljava/lang/String;

    iput-object v10, v8, Lcom/aps/q;->k:Ljava/lang/String;

    iput-object v11, v8, Lcom/aps/q;->l:Ljava/lang/String;

    iput-object v12, v8, Lcom/aps/q;->m:Ljava/lang/String;

    sget-object v7, Lcom/aps/g;->d:Ljava/lang/String;

    iput-object v7, v8, Lcom/aps/q;->c:Ljava/lang/String;

    sget-object v7, Lcom/aps/g;->e:Ljava/lang/String;

    iput-object v7, v8, Lcom/aps/q;->d:Ljava/lang/String;

    iput-object v6, v8, Lcom/aps/q;->n:Ljava/lang/String;

    sget-object v6, Lcom/aps/g;->a:Ljava/lang/String;

    iput-object v6, v8, Lcom/aps/q;->o:Ljava/lang/String;

    sget-object v6, Lcom/aps/g;->c:Ljava/lang/String;

    iput-object v6, v8, Lcom/aps/q;->r:Ljava/lang/String;

    sget-object v6, Lcom/aps/g;->b:Ljava/lang/String;

    iput-object v6, v8, Lcom/aps/q;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aps/b;->H:Ljava/lang/String;

    iput-object v6, v8, Lcom/aps/q;->q:Ljava/lang/String;

    iput-object v5, v8, Lcom/aps/q;->s:Ljava/lang/String;

    iput-object v1, v8, Lcom/aps/q;->t:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/location/core/c;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/aps/q;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "android"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/location/core/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/aps/q;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/location/core/c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/aps/q;->h:Ljava/lang/String;

    iput-object v13, v8, Lcom/aps/q;->B:Ljava/lang/String;

    iput-object v14, v8, Lcom/aps/q;->C:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->r:Ljava/util/List;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/aps/b;->E:J

    sub-long/2addr v5, v9

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/aps/q;->E:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/aps/b;->l:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v4

    :goto_6
    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v5, v1

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->p()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "*"

    const-string/jumbo v6, "."

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v1, 0x0

    move v4, v1

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-static {v1}, Lcom/aps/b;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    :cond_8
    const-string/jumbo v1, "1"

    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->p()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->m()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_9
    const/4 v6, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<mcc>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</mcc>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<mnc>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</mnc>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<lac>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</lac>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<cellid>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</cellid>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<signal>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</signal>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move v5, v1

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    iget v7, v1, Lcom/aps/e;->c:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/aps/e;->d:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_a

    const-string/jumbo v1, "*"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_9

    :cond_b
    move-object v1, v4

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/e;

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<mcc>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</mcc>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<sid>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</sid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<nid>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</nid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<bid>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</bid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/aps/e;->f:I

    if-lez v4, :cond_c

    iget v4, v1, Lcom/aps/e;->e:I

    if-lez v4, :cond_c

    const-string/jumbo v4, "<lon>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</lon>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<lat>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/aps/e;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</lat>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v4, "<signal>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Lcom/aps/e;->j:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "</signal>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->m()V

    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_10

    move-object v1, v2

    :goto_a
    iput-object v5, v8, Lcom/aps/q;->v:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/aps/q;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/aps/q;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/aps/q;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aps/b;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/aps/q;->u:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/aps/q;->a()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catch_1
    move-exception v16

    goto/16 :goto_3

    :catch_2
    move-exception v6

    goto/16 :goto_2

    :catch_3
    move-exception v6

    goto/16 :goto_1

    :cond_10
    move-object v1, v3

    goto :goto_a

    :cond_11
    move-object v5, v4

    goto/16 :goto_7

    :cond_12
    move-object v7, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic i(Lcom/aps/b;)I
    .locals 1

    iget v0, p0, Lcom/aps/b;->G:I

    return v0
.end method

.method private declared-synchronized i()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/aps/b;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->D:J

    :cond_0
    invoke-direct {p0}, Lcom/aps/b;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aps/b;->n()V

    :cond_1
    invoke-direct {p0}, Lcom/aps/b;->h()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/aps/b;)Lcom/aps/aa;
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    return-object v0
.end method

.method private j()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/aps/b;->B:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/aps/b;->D:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/b;->D:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/g;->k:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private k()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/aps/b;->E:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/b;->E:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/g;->j:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/aps/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aps/b;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/aps/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/b;->r()V

    return-void
.end method

.method private l()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method private n()V
    .locals 3

    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/aps/b;->P:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiManager;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->E:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private o()V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/k;->b:D

    aput-wide v7, v6, v10

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/aps/k;->a:D

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->h()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->g()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private p()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/aps/v;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private q()V
    .locals 2

    const/16 v1, 0x9

    iget-boolean v0, p0, Lcom/aps/b;->B:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/aps/b;->l:I

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private s()V
    .locals 1

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private t()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/aps/b;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/aps/b;->b(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    invoke-direct {p0, v1}, Lcom/aps/b;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(ZI)I
    .locals 6

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/aps/b;->r()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/b;->L:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/aps/b;->s()V

    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    new-instance v0, Lcom/aps/b$2;

    invoke-direct {v0, p0, p2}, Lcom/aps/b$2;-><init>(Lcom/aps/b;I)V

    iput-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    :cond_3
    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public declared-synchronized a()Lcom/aps/c;
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/aps/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/aps/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/aps/b;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/b;->G:I

    iget v0, p0, Lcom/aps/b;->G:I

    if-le v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/aps/b;->K:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/aps/b;->d()V

    :cond_4
    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/amap/api/location/core/a;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/amap/api/location/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->b()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/aps/b;->j()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aps/b;->D:J

    :cond_6
    invoke-direct {p0}, Lcom/aps/b;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/aps/b;->n()V

    :cond_7
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    :cond_8
    iget v0, p0, Lcom/aps/b;->G:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/v;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aps/b;->B:Z

    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    :cond_9
    iget v0, p0, Lcom/aps/b;->G:I

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    :goto_2
    if-lez v0, :cond_a

    iget-object v2, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->c:Z

    goto :goto_0

    :cond_a
    iget-wide v5, p0, Lcom/aps/b;->A:J

    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/16 v9, 0x12c

    cmp-long v0, v5, v9

    if-gez v0, :cond_26

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->j()J

    move-result-wide v5

    sub-long v5, v7, v5

    :cond_b
    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_26

    move v0, v3

    :goto_3
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    iget-boolean v2, p0, Lcom/aps/b;->B:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/aps/b;->t()Landroid/telephony/CellLocation;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_24

    :goto_6
    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/aps/v;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_d
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aps/b;->q()V

    const-string/jumbo v0, ""

    const-string/jumbo v2, "network"

    invoke-direct {p0}, Lcom/aps/b;->p()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    :goto_8
    iget v5, p0, Lcom/aps/b;->l:I

    sparse-switch v5, :sswitch_data_0

    :cond_e
    move-object v2, v0

    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/amap/api/location/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/aps/b;->b:I

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_f
    iget v0, p0, Lcom/aps/b;->b:I

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->d()Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-direct {p0}, Lcom/aps/b;->o()V

    invoke-virtual {p0}, Lcom/aps/b;->e()V

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :pswitch_0
    :try_start_8
    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_d

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/telephony/CellLocation;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :pswitch_1
    :try_start_a
    iget-object v2, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/aps/v;->c()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_d

    :try_start_b
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    if-gtz v2, :cond_10

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7

    :cond_10
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    if-gez v2, :cond_11

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    if-gez v2, :cond_12

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_12
    const/4 v2, 0x2

    iput v2, p0, Lcom/aps/b;->l:I

    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aps/e;

    invoke-direct {v5}, Lcom/aps/e;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    iput-object v2, v5, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->g:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->h:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->i:I

    iget v2, p0, Lcom/aps/b;->v:I

    iput v2, v5, Lcom/aps/e;->j:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->e:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, v5, Lcom/aps/e;->f:I

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_7

    :cond_13
    :try_start_e
    invoke-direct {p0}, Lcom/aps/b;->m()V

    goto/16 :goto_8

    :sswitch_0
    iget-object v5, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    const-string/jumbo v0, "cellwifi"

    :goto_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_9

    :cond_14
    const-string/jumbo v0, "cell"

    goto :goto_a

    :sswitch_1
    iget-object v5, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    const-string/jumbo v0, "cellwifi"

    :goto_b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_9

    :cond_15
    const-string/jumbo v0, "cell"

    goto :goto_b

    :sswitch_2
    const-string/jumbo v0, "#%s#"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_16

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_16

    move-object v2, v1

    goto/16 :goto_9

    :cond_16
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    move-object v2, v1

    goto/16 :goto_9

    :cond_17
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_23

    iget-object v5, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v1

    :goto_c
    move-object v2, v0

    goto/16 :goto_9

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_9

    :cond_19
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-direct {p0}, Lcom/aps/b;->g()Ljava/lang/StringBuilder;

    move-result-object v5

    iput-object v2, p0, Lcom/aps/b;->e:Ljava/lang/String;

    iput-object v5, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aps/b;->G:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-le v0, v3, :cond_1b

    :try_start_f
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    const-string/jumbo v6, "mem"

    invoke-virtual {v0, v2, v5, v6}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v1

    :cond_1b
    :goto_d
    if-eqz v1, :cond_22

    :try_start_10
    invoke-virtual {v1}, Lcom/aps/c;->j()J

    move-result-wide v6

    invoke-static {}, Lcom/aps/v;->a()J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-lez v0, :cond_22

    move v0, v3

    :goto_e
    if-eqz v1, :cond_1c

    if-eqz v0, :cond_21

    :cond_1c
    :try_start_11
    invoke-direct {p0}, Lcom/aps/b;->i()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aps/b;->a([B)Lcom/aps/c;
    :try_end_11
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v0

    :goto_f
    :try_start_12
    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    :goto_10
    iget v0, p0, Lcom/aps/b;->G:I

    if-le v0, v3, :cond_1d

    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v0, v2, v1, v5}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v0, v1}, Lcom/aps/m;->a(Lcom/aps/c;)Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    :cond_1e
    invoke-direct {p0}, Lcom/aps/b;->o()V

    invoke-virtual {p0}, Lcom/aps/b;->e()V

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    goto/16 :goto_4

    :catch_3
    move-exception v0

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/aps/c;->j()J

    move-result-wide v6

    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v6, v8

    if-gez v4, :cond_1f

    move-object v0, v1

    goto :goto_f

    :cond_1f
    throw v0

    :cond_20
    throw v0

    :cond_21
    iput-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_10

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto :goto_d

    :cond_22
    move v0, v4

    goto :goto_e

    :cond_23
    move-object v0, v2

    goto/16 :goto_c

    :cond_24
    move-object v0, v2

    goto/16 :goto_6

    :cond_25
    move-object v2, v1

    goto/16 :goto_5

    :cond_26
    move v0, v4

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const-string/jumbo v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/aps/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/aps/m;->a()Lcom/aps/m;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    const-string/jumbo v0, "connectivity"

    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "phone"

    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->L:J

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/k;->b:D

    aput-wide v7, v6, v10

    iget-wide v7, v0, Lcom/aps/k;->a:D

    aput-wide v7, v6, v11

    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    iget v7, v0, Lcom/aps/k;->d:I

    if-eqz v7, :cond_3

    iput v10, v0, Lcom/aps/k;->d:I

    :cond_5
    iget v7, v0, Lcom/aps/k;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    iget v7, v0, Lcom/aps/k;->d:I

    if-eq v7, v11, :cond_3

    iput v11, v0, Lcom/aps/k;->d:I

    :cond_6
    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    iget v0, v0, Lcom/aps/k;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aps/k;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/aps/g;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/aps/g;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v1}, Lcom/aps/d;->a()V

    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/aps/g;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/aps/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    return-void
.end method

.method public b()V
    .locals 5

    const/16 v1, 0x9

    const/4 v0, 0x2

    const/4 v3, 0x1

    iget v2, p0, Lcom/aps/b;->G:I

    if-ne v2, v3, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-nez v2, :cond_0

    new-instance v2, Lcom/aps/d;

    iget-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/aps/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aps/b;->M:Lcom/aps/d;

    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v4, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/aps/b;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aps/b;->D:J

    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x9

    iput v1, p0, Lcom/aps/b;->l:I

    :goto_1
    new-instance v1, Lcom/aps/b$1;

    invoke-direct {v1, p0}, Lcom/aps/b$1;-><init>(Lcom/aps/b;)V

    iput-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    invoke-static {}, Lcom/aps/v;->c()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_5

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-nez v0, :cond_3

    new-instance v0, Lcom/aps/f;

    iget-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aps/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    iget-object v1, p0, Lcom/aps/b;->d:Lcom/aps/b$a;

    invoke-virtual {v0, v1}, Lcom/aps/f;->a(Lcom/aps/f$a;)V

    :cond_3
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    iget-object v1, p0, Lcom/aps/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/aps/b;->z:Lcom/aps/c;

    iget-object v3, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    :cond_4
    :goto_4
    return-void

    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_1

    :cond_5
    const/16 v0, 0x100

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aps/k;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/b;->O:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    invoke-direct {p0}, Lcom/aps/b;->r()V

    :try_start_2
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v0}, Lcom/aps/d;->a()V

    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v0}, Lcom/aps/d;->b()V

    :cond_3
    invoke-static {v4}, Lcom/aps/g;->a(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/b;->v:I

    invoke-direct {p0}, Lcom/aps/b;->m()V

    iput-object v3, p0, Lcom/aps/b;->z:Lcom/aps/c;

    iput-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iput-object v3, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    invoke-virtual {v0}, Lcom/aps/m;->b()V

    iput-object v3, p0, Lcom/aps/b;->o:Lcom/aps/m;

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/aps/b;->b:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->a()V

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/aa;->a(Landroid/content/Context;)Lcom/aps/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/aa;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/aps/b;->O:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->O:Z

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/k;->b:D

    aput-wide v7, v6, v10

    iget-wide v7, v0, Lcom/aps/k;->a:D

    aput-wide v7, v6, v11

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->h()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->g()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    iget v7, v0, Lcom/aps/k;->d:I

    if-eqz v7, :cond_3

    iput v10, v0, Lcom/aps/k;->d:I

    :cond_5
    iget v7, v0, Lcom/aps/k;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    iget v7, v0, Lcom/aps/k;->d:I

    if-eq v7, v11, :cond_3

    iput v11, v0, Lcom/aps/k;->d:I

    :cond_6
    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    iget v0, v0, Lcom/aps/k;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
