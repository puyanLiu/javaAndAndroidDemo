.class public Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    .line 10
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    .line 11
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    .line 17
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    return-object v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    .line 36
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    .line 27
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    .line 44
    return-void
.end method
