.class public Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# static fields
.field private static final N:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:[I

.field private static final d:[I

.field private static final g:[I

.field private static final i:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:[I

.field private H:[I

.field private final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private M:[B

.field private final b:[J

.field private final c:[J

.field private final e:[Ljava/lang/String;

.field private final f:[J

.field private final h:[J

.field private final j:[F

.field private final k:Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;

.field private final l:Z

.field private final m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a:[I

    .line 76
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->d:[I

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->g:[I

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->i:[I

    .line 255
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->N:Ljava/util/Comparator;

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 76
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 124
    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->b:[J

    .line 74
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->c:[J

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->e:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->f:[J

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->h:[J

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->j:[F

    .line 139
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->n:F

    .line 140
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->o:F

    .line 141
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->p:F

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->I:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->J:Ljava/util/ArrayList;

    .line 169
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->L:Z

    .line 171
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->M:[B

    .line 275
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->l:Z

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->m:Z

    .line 277
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->k:Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;

    .line 278
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 862
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 865
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->M:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 867
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 869
    if-lez v5, :cond_1

    move v3, v0

    .line 871
    :goto_0
    if-ge v3, v5, :cond_0

    .line 872
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->M:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_0

    .line 873
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->M:[B

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 881
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 887
    :goto_1
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 889
    :goto_2
    return-object v0

    .line 881
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 887
    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_4
    move-object v0, v1

    .line 889
    goto :goto_2

    .line 881
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_2

    .line 883
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 887
    :cond_2
    :goto_6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 881
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_3

    .line 883
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 887
    :cond_3
    :goto_8
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 881
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_4

    .line 883
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 887
    :cond_4
    :goto_a
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_a

    .line 881
    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v0, v2

    goto :goto_5
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    .line 894
    iget-object v1, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    const-string/jumbo v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    const-string/jumbo v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 897
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 899
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 900
    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 901
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 904
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 905
    iget-object v0, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->h:Ljava/lang/String;

    .line 908
    :cond_2
    iget-object v1, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 909
    :cond_3
    iput-object v0, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    .line 910
    iget-object v0, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->j:I

    .line 912
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 364
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v13

    .line 365
    if-nez v13, :cond_1

    const/4 v2, 0x0

    move v8, v2

    .line 366
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 367
    const/4 v3, 0x0

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->A:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->B:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->F:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->C:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->D:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->E:I

    add-int v14, v2, v4

    .line 371
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_d

    .line 372
    aget v4, v13, v9

    .line 374
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->m:Z

    if-nez v2, :cond_0

    if-gez p2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v4, v2, :cond_10

    .line 375
    :cond_0
    if-ltz v4, :cond_d

    .line 379
    if-ge v3, v11, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;

    move-object v12, v2

    .line 384
    :goto_2
    if-eqz v12, :cond_7

    iget v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->a:I

    if-ne v2, v4, :cond_7

    .line 386
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    .line 387
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->w:Z

    .line 388
    add-int/lit8 v10, v3, 0x1

    .line 393
    iget-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->g:Z

    if-eqz v2, :cond_f

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->b:[J

    .line 397
    iget-object v3, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v2, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 399
    const/4 v3, 0x0

    aget-wide v17, v2, v3

    .line 403
    const/4 v3, 0x1

    aget-wide v19, v2, v3

    .line 404
    const/4 v3, 0x2

    aget-wide v21, v2, v3

    .line 405
    const/4 v3, 0x3

    aget-wide v23, v2, v3

    .line 407
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    cmp-long v2, v21, v2

    if-nez v2, :cond_3

    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    cmp-long v2, v23, v2

    if-nez v2, :cond_3

    .line 408
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    .line 409
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    .line 410
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->t:I

    .line 411
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->u:I

    .line 412
    iget-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->v:Z

    if-eqz v2, :cond_f

    .line 413
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->v:Z

    move v2, v9

    move v3, v10

    move v4, v11

    .line 551
    :goto_3
    add-int/lit8 v9, v2, 0x1

    move v11, v4

    goto :goto_1

    .line 365
    :cond_1
    array-length v2, v13

    move v8, v2

    goto/16 :goto_0

    .line 379
    :cond_2
    const/4 v2, 0x0

    move-object v12, v2

    goto :goto_2

    .line 418
    :cond_3
    iget-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->v:Z

    if-nez v2, :cond_4

    .line 419
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->v:Z

    .line 422
    :cond_4
    if-gez p2, :cond_5

    .line 423
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 424
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 425
    iget-object v3, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->H:[I

    iget-object v7, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->H:[I

    .line 443
    :cond_5
    if-lez p2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->k:Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;

    if-eqz v2, :cond_6

    .line 444
    add-long v2, v21, v23

    iget-wide v4, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    sub-long/2addr v2, v4

    iget-wide v4, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v3, v14

    div-float/2addr v2, v3

    .line 445
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_6

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->k:Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;

    iget-object v3, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->o:F

    invoke-interface {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$CpuAbuseThreadObserver;->a(Ljava/lang/String;)V

    .line 454
    :cond_6
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->l:J

    sub-long v2, v15, v2

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->m:J

    .line 455
    iput-wide v15, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->l:J

    .line 456
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    sub-long v2, v21, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    .line 457
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    sub-long v2, v23, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    .line 458
    move-wide/from16 v0, v21

    iput-wide v0, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    .line 459
    move-wide/from16 v0, v23

    iput-wide v0, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    .line 460
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->r:J

    sub-long v2, v17, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->t:I

    .line 461
    iget-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->s:J

    sub-long v2, v19, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->u:I

    .line 462
    move-wide/from16 v0, v17

    iput-wide v0, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->r:J

    .line 463
    move-wide/from16 v0, v19

    iput-wide v0, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->s:J

    .line 464
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->w:Z

    move v2, v9

    move v3, v10

    move v4, v11

    .line 465
    goto/16 :goto_3

    .line 470
    :cond_7
    if-eqz v12, :cond_8

    iget v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->a:I

    if-le v2, v4, :cond_c

    .line 472
    :cond_8
    new-instance v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->l:Z

    move/from16 v0, p2

    invoke-direct {v12, v4, v0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 473
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 474
    add-int/lit8 v10, v3, 0x1

    .line 475
    add-int/lit8 v11, v11, 0x1

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->e:[Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->f:[J

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->l:J

    .line 483
    iget-object v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->d:[I

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v3, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 490
    const/4 v5, 0x5

    aget-wide v5, v3, v5

    iput-wide v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->k:J

    .line 492
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->g:Z

    .line 493
    const/4 v5, 0x0

    aget-object v2, v2, v5

    iput-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->h:Ljava/lang/String;

    .line 494
    const/4 v2, 0x1

    aget-wide v5, v3, v2

    iput-wide v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->r:J

    .line 495
    const/4 v2, 0x2

    aget-wide v5, v3, v2

    iput-wide v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->s:J

    .line 496
    const/4 v2, 0x3

    aget-wide v5, v3, v2

    iput-wide v5, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    .line 497
    const/4 v2, 0x4

    aget-wide v2, v3, v2

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    .line 510
    :goto_4
    if-gez p2, :cond_b

    .line 511
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 512
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 513
    iget-object v3, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->d:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->H:[I

    iget-object v7, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->H:[I

    .line 525
    :cond_9
    :goto_5
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    .line 526
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    .line 527
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->t:I

    .line 528
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->u:I

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    .line 530
    if-nez p3, :cond_f

    iget-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->g:Z

    if-eqz v2, :cond_f

    .line 531
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->w:Z

    move v2, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_3

    .line 504
    :cond_a
    const-string/jumbo v2, "ProcessCpuTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Skipping unknown process pid "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string/jumbo v2, "<unknown>"

    iput-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->h:Ljava/lang/String;

    .line 506
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->o:J

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->n:J

    .line 507
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->s:J

    iput-wide v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->r:J

    goto :goto_4

    .line 516
    :cond_b
    iget-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->g:Z

    if-eqz v2, :cond_9

    .line 517
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->h:Ljava/lang/String;

    iput-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    .line 518
    iget-object v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->i:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->j:I

    goto :goto_5

    .line 537
    :cond_c
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    .line 538
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    .line 539
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->t:I

    .line 540
    const/4 v2, 0x0

    iput v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->u:I

    .line 541
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->y:Z

    .line 542
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->w:Z

    .line 543
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    add-int/lit8 v4, v11, -0x1

    .line 550
    add-int/lit8 v2, v9, -0x1

    goto/16 :goto_3

    .line 554
    :cond_d
    :goto_6
    if-ge v3, v11, :cond_e

    .line 556
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;

    .line 557
    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    .line 558
    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    .line 559
    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->t:I

    .line 560
    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->u:I

    .line 561
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->y:Z

    .line 562
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->w:Z

    .line 563
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    add-int/lit8 v11, v11, -0x1

    .line 566
    goto :goto_6

    .line 568
    :cond_e
    return-object v13

    :cond_f
    move v2, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_3

    :cond_10
    move v2, v9

    move v4, v11

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->q:J

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->r:J

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->q:J

    .line 297
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->s:J

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->t:J

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->s:J

    .line 300
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->h:[J

    .line 301
    const-string/jumbo v1, "/proc/stat"

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->g:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 306
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    .line 308
    const/4 v5, 0x3

    aget-wide v5, v0, v5

    .line 310
    const/4 v7, 0x4

    aget-wide v7, v0, v7

    .line 311
    const/4 v9, 0x5

    aget-wide v9, v0, v9

    .line 312
    const/4 v11, 0x6

    aget-wide v11, v0, v11

    .line 314
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->u:J

    sub-long v13, v1, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->A:I

    .line 315
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->v:J

    sub-long v13, v3, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->B:I

    .line 316
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->w:J

    sub-long v13, v7, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->C:I

    .line 317
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->x:J

    sub-long v13, v9, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->D:I

    .line 318
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->y:J

    sub-long v13, v11, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->E:I

    .line 319
    iget-wide v13, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->z:J

    sub-long v13, v5, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->F:I

    .line 330
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->u:J

    .line 331
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->v:J

    .line 332
    iput-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->w:J

    .line 333
    iput-wide v9, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->x:J

    .line 334
    iput-wide v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->y:J

    .line 335
    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->z:J

    .line 338
    :cond_0
    const-string/jumbo v1, "/proc"

    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->L:Z

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->G:[I

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->I:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->G:[I

    .line 340
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->j:[F

    .line 341
    const-string/jumbo v1, "/proc/loadavg"

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->i:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 344
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 345
    const/4 v3, 0x2

    aget v0, v0, v3

    .line 346
    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->n:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->o:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->p:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 347
    :cond_1
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->n:F

    .line 348
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->o:F

    .line 349
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->p:F

    .line 350
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->K:Z

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker;->L:Z

    .line 359
    return-void
.end method
