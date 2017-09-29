.class public Lcom/samsung/android/sdk/pass/SpassFingerprint;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_AUTHENTIFICATION_FAILED:I = 0x10

.field public static final STATUS_AUTHENTIFICATION_PASSWORD_SUCCESS:I = 0x64

.field public static final STATUS_AUTHENTIFICATION_SUCCESS:I = 0x0

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SENSOR_FAILED:I = 0x7

.field public static final STATUS_TIMEOUT_FAILED:I = 0x4

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field private static c:Landroid/content/Context;

.field private static d:Z

.field private static e:Z


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

.field private b:Landroid/content/Context;

.field private f:Landroid/os/IBinder;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:Landroid/content/Context;

    sput-boolean v1, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Z

    sput-boolean v1, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Z

    sput-boolean v1, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Z

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Z

    if-eqz v0, :cond_4

    :try_start_1
    const-string/jumbo v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string/jumbo v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    ushr-int/lit8 v0, v0, 0x18

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;->create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:Landroid/os/Handler;

    :cond_4
    const-class v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    const-string/jumbo v1, "com.samsung.android.fingerprint.FingerprintManager"

    const-string/jumbo v2, "EVENT_IDENTIFY_"

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/SdkSupporter;->copyStaticFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getVersion failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0xc -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Fingerprint Service is not supported in the platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Fingerprint Service is not running on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public cancelIdentify()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No Identify request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cancel() returned RESULT_FAILED due to FingerprintService Error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dialog dismiss fail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public hasRegisteredFinger()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activityContext passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    new-instance v1, Lcom/samsung/android/sdk/pass/b;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/pass/b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activityContext is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Lcom/samsung/android/fingerprint/IFingerprintClient;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "failed because registerClient returned null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->hasPendingCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "identify() returned RESULT_FAILED."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "identify() returned RESULT_IN_PROGRESS."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Lcom/samsung/android/fingerprint/IFingerprintClient;

    check-cast v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void
.end method

.method public startIdentifyWithDialog(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activityContext passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2, p3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    new-instance v2, Lcom/samsung/android/sdk/pass/a;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/pass/a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activityContext is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
