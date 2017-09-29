.class final Lcom/alipay/android/app/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/android/app/util/c;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/util/c;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method
