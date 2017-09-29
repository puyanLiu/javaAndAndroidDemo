.class Lcom/alipay/android/launcher/TabLauncher$2;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$2;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$2;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$9(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 283
    return-void
.end method
