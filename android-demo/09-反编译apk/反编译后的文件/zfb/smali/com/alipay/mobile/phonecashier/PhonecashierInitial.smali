.class public Lcom/alipay/mobile/phonecashier/PhonecashierInitial;
.super Ljava/lang/Object;
.source "PhonecashierInitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    .line 27
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 28
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->y()V

    .line 30
    :cond_0
    return-void
.end method
