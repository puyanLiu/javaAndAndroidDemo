.class public final Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;
.super Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->a:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final rebind(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl_;->a:Landroid/content/Context;

    return-void
.end method
