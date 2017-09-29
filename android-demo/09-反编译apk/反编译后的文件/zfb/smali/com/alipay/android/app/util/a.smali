.class final Lcom/alipay/android/app/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/android/app/util/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/util/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->c(Ljava/lang/String;)V

    .line 72
    return-void
.end method
