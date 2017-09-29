.class Lcom/alipay/android/launcher/TabLauncher$9;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;

.field private final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$9;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$tabId:Ljava/lang/String;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$9;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$tabId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->access$13(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    .line 989
    return-void
.end method
