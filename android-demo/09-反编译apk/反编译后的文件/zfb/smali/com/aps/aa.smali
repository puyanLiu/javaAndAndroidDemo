.class public Lcom/aps/aa;
.super Ljava/lang/Object;


# static fields
.field private static P:F

.field private static Q:F

.field private static R:F

.field private static S:F

.field private static T:I

.field private static U:I

.field private static V:I

.field private static W:I

.field private static X:I

.field private static Y:I

.field private static Z:I

.field protected static a:Z

.field private static final synthetic aa:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ab:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field protected static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/Object;

.field private static j:Lcom/aps/aa;


# instance fields
.field private A:Ljava/lang/Thread;

.field private B:Landroid/os/Looper;

.field private C:Lcom/aps/ax;

.field private D:Landroid/location/Location;

.field private E:Lcom/aps/aw;

.field private F:Landroid/os/Handler;

.field private G:Lcom/aps/ay;

.field private H:Landroid/location/LocationListener;

.field private I:Landroid/content/BroadcastReceiver;

.field private J:Landroid/location/GpsStatus;

.field private K:I

.field private L:I

.field private M:Ljava/util/HashMap;

.field private N:I

.field private O:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:Landroid/content/Context;

.field private s:Landroid/location/LocationManager;

.field private t:Lcom/aps/am;

.field private u:Lcom/aps/ba;

.field private v:Lcom/aps/bh;

.field private w:Lcom/aps/aj;

.field private x:Lcom/aps/bg;

.field private y:Lcom/aps/az;

.field private z:Lcom/aps/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0xa

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/aps/aa;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "removeUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "android.location.LocationListener"

    const-string/jumbo v5, "listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/aps/aa;->aa:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "removeUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "android.location.LocationListener"

    const-string/jumbo v5, "listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/aa;->ab:Lorg/aspectj/lang/JoinPoint$StaticPart;

    sput-boolean v10, Lcom/aps/aa;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aps/aa;->b:Z

    sput v9, Lcom/aps/aa;->c:I

    sput v11, Lcom/aps/aa;->d:I

    sput v9, Lcom/aps/aa;->e:I

    sput v9, Lcom/aps/aa;->f:I

    const/16 v0, 0x32

    sput v0, Lcom/aps/aa;->g:I

    const/16 v0, 0xc8

    sput v0, Lcom/aps/aa;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aps/aa;->i:Ljava/lang/Object;

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/aps/aa;->P:F

    const v0, 0x400ccccd    # 2.2f

    sput v0, Lcom/aps/aa;->Q:F

    const v0, 0x40133333    # 2.3f

    sput v0, Lcom/aps/aa;->R:F

    const v0, 0x40733333    # 3.8f

    sput v0, Lcom/aps/aa;->S:F

    const/4 v0, 0x3

    sput v0, Lcom/aps/aa;->T:I

    sput v9, Lcom/aps/aa;->U:I

    sput v11, Lcom/aps/aa;->V:I

    const/4 v0, 0x7

    sput v0, Lcom/aps/aa;->W:I

    const/16 v0, 0x14

    sput v0, Lcom/aps/aa;->X:I

    const/16 v0, 0x46

    sput v0, Lcom/aps/aa;->Y:I

    const/16 v0, 0x78

    sput v0, Lcom/aps/aa;->Z:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/aps/aa;->k:Z

    iput-boolean v1, p0, Lcom/aps/aa;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/aa;->m:I

    iput v1, p0, Lcom/aps/aa;->n:I

    iput v1, p0, Lcom/aps/aa;->o:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/aps/aa;->p:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/aps/aa;->q:J

    iput-object v4, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    iput-object v4, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    iput-object v4, p0, Lcom/aps/aa;->C:Lcom/aps/ax;

    iput-object v4, p0, Lcom/aps/aa;->D:Landroid/location/Location;

    iput-object v4, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    iput-object v4, p0, Lcom/aps/aa;->F:Landroid/os/Handler;

    new-instance v0, Lcom/aps/ay;

    invoke-direct {v0, p0}, Lcom/aps/ay;-><init>(Lcom/aps/aa;)V

    iput-object v0, p0, Lcom/aps/aa;->G:Lcom/aps/ay;

    new-instance v0, Lcom/aps/as;

    invoke-direct {v0, p0}, Lcom/aps/as;-><init>(Lcom/aps/aa;)V

    iput-object v0, p0, Lcom/aps/aa;->H:Landroid/location/LocationListener;

    new-instance v0, Lcom/aps/at;

    invoke-direct {v0, p0}, Lcom/aps/at;-><init>(Lcom/aps/aa;)V

    iput-object v0, p0, Lcom/aps/aa;->I:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/aps/aa;->J:Landroid/location/GpsStatus;

    iput v1, p0, Lcom/aps/aa;->K:I

    iput v1, p0, Lcom/aps/aa;->L:I

    iput-object v4, p0, Lcom/aps/aa;->M:Ljava/util/HashMap;

    iput v1, p0, Lcom/aps/aa;->N:I

    iput v1, p0, Lcom/aps/aa;->O:I

    iput-object p1, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/aps/am;->a(Landroid/content/Context;)Lcom/aps/am;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    new-instance v0, Lcom/aps/ad;

    invoke-direct {v0}, Lcom/aps/ad;-><init>()V

    iput-object v0, p0, Lcom/aps/aa;->z:Lcom/aps/ad;

    new-instance v0, Lcom/aps/ba;

    iget-object v2, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-direct {v0, v2}, Lcom/aps/ba;-><init>(Lcom/aps/am;)V

    iput-object v0, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    new-instance v0, Lcom/aps/aj;

    invoke-direct {v0, p1}, Lcom/aps/aj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aps/aa;->w:Lcom/aps/aj;

    new-instance v0, Lcom/aps/bh;

    iget-object v2, p0, Lcom/aps/aa;->w:Lcom/aps/aj;

    invoke-direct {v0, v2}, Lcom/aps/bh;-><init>(Lcom/aps/aj;)V

    iput-object v0, p0, Lcom/aps/aa;->v:Lcom/aps/bh;

    new-instance v0, Lcom/aps/bg;

    iget-object v2, p0, Lcom/aps/aa;->w:Lcom/aps/aj;

    invoke-direct {v0, v2}, Lcom/aps/bg;-><init>(Lcom/aps/aj;)V

    iput-object v0, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/az;->a(Landroid/content/Context;)Lcom/aps/az;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    iget-object v2, p0, Lcom/aps/aa;->G:Lcom/aps/ay;

    invoke-virtual {v0, v2}, Lcom/aps/az;->a(Lcom/aps/ay;)V

    invoke-direct {p0}, Lcom/aps/aa;->n()V

    iget-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aps/aa;->l:Z

    invoke-static {p1}, Lcom/aps/bi;->a(Landroid/content/Context;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/aa;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/aps/aa;->K:I

    return v0
.end method

.method static synthetic a(Lcom/aps/aa;Lcom/aps/y;I)I
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x1

    iget v2, p0, Lcom/aps/aa;->N:I

    sget v3, Lcom/aps/aa;->U:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/aps/aa;->N:I

    sget v3, Lcom/aps/aa;->T:I

    if-gt v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/aps/y;->c()D

    move-result-wide v2

    sget v4, Lcom/aps/aa;->P:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    sget v4, Lcom/aps/aa;->Q:F

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/aps/y;->b()D

    move-result-wide v2

    sget v4, Lcom/aps/aa;->R:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    sget v4, Lcom/aps/aa;->S:F

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget v2, Lcom/aps/aa;->W:I

    if-ge p2, v2, :cond_0

    sget v0, Lcom/aps/aa;->V:I

    if-gt p2, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aps/aa;->M:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aps/aa;->M:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/aps/aa;->a(Ljava/util/HashMap;)I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;)I
    .locals 12

    iget v0, p0, Lcom/aps/aa;->K:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/aps/aa;->a(Ljava/util/List;)[D

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    new-array v5, v0, [D

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [D

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    int-to-double v10, v0

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v7, 0x1

    aget-wide v8, v1, v7

    int-to-double v10, v0

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v0, 0x0

    aget-wide v7, v5, v0

    const/4 v9, 0x0

    aget-wide v9, v1, v9

    add-double/2addr v7, v9

    aput-wide v7, v5, v0

    const/4 v0, 0x1

    aget-wide v7, v5, v0

    const/4 v9, 0x1

    aget-wide v9, v1, v9

    add-double/2addr v7, v9

    aput-wide v7, v5, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    int-to-double v3, v6

    div-double/2addr v1, v3

    aput-wide v1, v5, v0

    const/4 v0, 0x1

    aget-wide v1, v5, v0

    int-to-double v3, v6

    div-double/2addr v1, v3

    aput-wide v1, v5, v0

    const/4 v0, 0x0

    aget-wide v2, v5, v0

    const/4 v0, 0x1

    aget-wide v6, v5, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v8, 0x0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v4, v8

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v1, "%d,%d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x0

    aget-wide v5, v4, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x1

    aget-wide v5, v4, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/aps/aa;->Y:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    div-double v0, v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/aps/aa;->Z:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aps/aa;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/aa;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/aa;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->J:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/aa;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->D:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/aa;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->F:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/aa;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/aps/aa;
    .locals 2

    sget-object v0, Lcom/aps/aa;->j:Lcom/aps/aa;

    if-nez v0, :cond_1

    sget-object v1, Lcom/aps/aa;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/aa;->j:Lcom/aps/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/aa;

    invoke-direct {v0, p0}, Lcom/aps/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aps/aa;->j:Lcom/aps/aa;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/aps/aa;->j:Lcom/aps/aa;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aps/aa;Lcom/aps/aw;)Lcom/aps/aw;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    return-object p1
.end method

.method private static final synthetic a(Landroid/location/LocationManager;Landroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    const/4 v15, 0x0

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
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COL.14.1126r"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/aa;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/aps/aa;->M:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/aps/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/aa;->n()V

    return-void
.end method

.method static synthetic a(Lcom/aps/aa;Landroid/location/Location;IJ)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    invoke-virtual {v0, p1}, Lcom/aps/ba;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    iget-object v0, v0, Lcom/aps/ba;->b:Lcom/aps/bb;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, v0, Lcom/aps/bb;->b:Landroid/location/Location;

    :cond_0
    iget-object v0, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    invoke-virtual {v0, p1}, Lcom/aps/ba;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    iget-object v2, v2, Lcom/aps/ba;->a:Lcom/aps/be;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, v2, Lcom/aps/be;->b:Landroid/location/Location;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_6

    const/4 v1, 0x1

    const/4 v0, 0x1

    iget-object p1, p0, Lcom/aps/aa;->D:Landroid/location/Location;

    move v3, v1

    move v1, v0

    move-object v0, p1

    :goto_0
    if-eqz v3, :cond_7

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/aa;->z:Lcom/aps/ad;

    iget-object v1, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    iget v3, p0, Lcom/aps/aa;->O:I

    int-to-byte v3, v3

    const/4 v6, 0x0

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/aps/ad;->a(Landroid/location/Location;Lcom/aps/am;IBJZ)Lcom/aps/ac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->n()Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_3
    invoke-virtual {v1}, Lcom/aps/ac;->a()[B

    move-result-object v1

    iget-object v3, p0, Lcom/aps/aa;->v:Lcom/aps/bh;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/aps/bh;->a(J[B)V

    :cond_4
    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/aa;->z:Lcom/aps/ad;

    if-nez v0, :cond_8

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object p1, p0, Lcom/aps/aa;->D:Landroid/location/Location;

    move v3, v1

    move v1, v0

    move-object v0, p1

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    const-string/jumbo v1, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v0, "get_sensor"

    const-string/jumbo v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/aps/aa;->z:Lcom/aps/ad;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    iget v3, p0, Lcom/aps/aa;->O:I

    int-to-byte v3, v3

    const/4 v6, 0x1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/aps/ad;->a(Landroid/location/Location;Lcom/aps/am;IBJZ)Lcom/aps/ac;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->n()Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_9
    invoke-virtual {v1}, Lcom/aps/ac;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/aps/aa;->v:Lcom/aps/bh;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/aps/bh;->a(J[B)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "get_sensor"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_4

    :cond_a
    move v3, v1

    move v1, v0

    move-object v0, p1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/aps/aa;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "collector"

    invoke-static {v0}, Lcom/aps/bi;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/List;)[D
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-array v1, v11, [D

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    if-eqz v0, :cond_2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    float-to-double v5, v0

    new-array v0, v11, [D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    aput-wide v7, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    aput-wide v3, v0, v10

    aget-wide v3, v1, v9

    aget-wide v5, v0, v9

    add-double/2addr v3, v5

    aput-wide v3, v1, v9

    aget-wide v3, v1, v10

    aget-wide v5, v0, v10

    add-double/2addr v3, v5

    aput-wide v3, v1, v10

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    aget-wide v2, v1, v9

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v9

    aget-wide v2, v1, v10

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v10

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/aps/aa;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/aps/aa;->L:I

    return v0
.end method

.method static synthetic b(Lcom/aps/aa;Ljava/util/HashMap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/aps/aa;->a(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/aps/aa;)Lcom/aps/az;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    return-object v0
.end method

.method private static final synthetic b(Landroid/location/LocationManager;Landroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    const/4 v15, 0x0

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
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aps/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method static synthetic c(Lcom/aps/aa;I)I
    .locals 0

    iput p1, p0, Lcom/aps/aa;->m:I

    return p1
.end method

.method static synthetic c(Lcom/aps/aa;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aps/aa;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/aps/aa;I)I
    .locals 0

    iput p1, p0, Lcom/aps/aa;->N:I

    return p1
.end method

.method static synthetic d(Lcom/aps/aa;)Lcom/aps/aw;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    return-object v0
.end method

.method static synthetic e(Lcom/aps/aa;I)I
    .locals 0

    iput p1, p0, Lcom/aps/aa;->O:I

    return p1
.end method

.method static synthetic e(Lcom/aps/aa;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/aps/aa;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->H:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/aps/aa;->e:I

    return v0
.end method

.method static synthetic g(Lcom/aps/aa;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->D:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/aps/aa;->h:I

    return v0
.end method

.method static synthetic h(Lcom/aps/aa;)I
    .locals 1

    iget v0, p0, Lcom/aps/aa;->p:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/aps/aa;->d:I

    return v0
.end method

.method static synthetic i(Lcom/aps/aa;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->J:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Lcom/aps/aa;->g:I

    return v0
.end method

.method static synthetic j(Lcom/aps/aa;)I
    .locals 2

    iget v0, p0, Lcom/aps/aa;->L:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aps/aa;->L:I

    return v0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/aps/aa;->f:I

    return v0
.end method

.method static synthetic k(Lcom/aps/aa;)I
    .locals 1

    iget v0, p0, Lcom/aps/aa;->m:I

    return v0
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/aps/aa;->c:I

    return v0
.end method

.method static synthetic l(Lcom/aps/aa;)Lcom/aps/am;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    return-object v0
.end method

.method static synthetic m()I
    .locals 1

    sget v0, Lcom/aps/aa;->X:I

    return v0
.end method

.method static synthetic m(Lcom/aps/aa;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->M:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic n(Lcom/aps/aa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->F:Landroid/os/Handler;

    return-object v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v0}, Lcom/aps/az;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/aps/aa;->n:I

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v0}, Lcom/aps/az;->c()I

    move-result v0

    iput v0, p0, Lcom/aps/aa;->o:I

    iget-object v0, p0, Lcom/aps/aa;->u:Lcom/aps/ba;

    iget v0, p0, Lcom/aps/aa;->n:I

    iget v0, p0, Lcom/aps/aa;->o:I

    invoke-static {}, Lcom/aps/ba;->a()V

    return-void
.end method

.method static synthetic o(Lcom/aps/aa;)I
    .locals 1

    iget v0, p0, Lcom/aps/aa;->L:I

    return v0
.end method

.method static synthetic p(Lcom/aps/aa;)I
    .locals 1

    iget v0, p0, Lcom/aps/aa;->O:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/aps/bf;->a:Z

    iget-boolean v0, p0, Lcom/aps/aa;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/aps/aa;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sput-boolean v5, Lcom/aps/aa;->b:Z

    iget-object v1, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/aps/aa;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/aps/aa;->H:Landroid/location/LocationListener;

    sget-object v3, Lcom/aps/aa;->aa:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v4

    invoke-static {v1, v2, v4, v3}, Lcom/aps/aa;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v6, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    :cond_2
    iget-object v1, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v6, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    :cond_3
    new-instance v1, Lcom/aps/au;

    invoke-direct {v1, p0, v0}, Lcom/aps/au;-><init>(Lcom/aps/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->a()V

    sput-boolean v5, Lcom/aps/aa;->a:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2220

    if-eq p1, v0, :cond_0

    const/16 v0, 0x300

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE or COLLECTOR_MEDIUM_SIZE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/aps/aa;->w:Lcom/aps/aj;

    invoke-virtual {v0, p1}, Lcom/aps/aj;->a(I)V

    return-void
.end method

.method public a(Lcom/aps/ai;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v0, p2}, Lcom/aps/az;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aps/ai;->a()[B

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    iget-object v3, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v3}, Lcom/aps/az;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/aps/az;->a(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/aps/ai;->a(Z)V

    iget-object v0, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    invoke-virtual {v0, p1}, Lcom/aps/bg;->a(Lcom/aps/ai;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    iget-object v3, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v3}, Lcom/aps/az;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/aps/az;->b(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-boolean v5, Lcom/aps/bf;->a:Z

    iget-boolean v0, p0, Lcom/aps/aa;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/aps/aa;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->I:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/aps/aa;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/aa;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->w()V

    :cond_3
    iget-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iput-object v4, p0, Lcom/aps/aa;->E:Lcom/aps/aw;

    iget-object v0, p0, Lcom/aps/aa;->s:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/aps/aa;->H:Landroid/location/LocationListener;

    sget-object v2, Lcom/aps/aa;->ab:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/aps/aa;->b(Landroid/location/LocationManager;Landroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v4, p0, Lcom/aps/aa;->B:Landroid/os/Looper;

    :cond_4
    iget-object v0, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v4, p0, Lcom/aps/aa;->A:Ljava/lang/Thread;

    :cond_5
    iget-object v0, p0, Lcom/aps/aa;->C:Lcom/aps/ax;

    if-eqz v0, :cond_6

    iput-boolean v5, p0, Lcom/aps/aa;->k:Z

    iget-object v0, p0, Lcom/aps/aa;->C:Lcom/aps/ax;

    invoke-virtual {v0}, Lcom/aps/ax;->interrupt()V

    iput-object v4, p0, Lcom/aps/aa;->C:Lcom/aps/ax;

    :cond_6
    iget-object v0, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->b()V

    sput-boolean v5, Lcom/aps/aa;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/aps/aa;->l:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/aps/aa;->b()V

    goto :goto_0
.end method

.method public d()Lcom/aps/ai;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/aps/aa;->e()Z

    iget-object v1, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v1}, Lcom/aps/az;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    iget-object v1, p0, Lcom/aps/aa;->y:Lcom/aps/az;

    invoke-virtual {v1}, Lcom/aps/az;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aps/bg;->a(I)Lcom/aps/ai;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/aa;->t:Lcom/aps/am;

    invoke-virtual {v1}, Lcom/aps/am;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/aps/aa;->w:Lcom/aps/aj;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/aps/aj;->b(J)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/aa;->x:Lcom/aps/bg;

    invoke-virtual {v0}, Lcom/aps/bg;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
