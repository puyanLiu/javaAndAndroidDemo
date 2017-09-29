.class Lcom/alipay/mobile/beehive/photo/util/PhotoUtil$1;
.super Ljava/lang/Object;
.source "PhotoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$dstFile:Ljava/io/File;

.field private final synthetic val$srcFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil$1;->val$srcFile:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil$1;->val$dstFile:Ljava/io/File;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil$1;->val$srcFile:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil$1;->val$dstFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->access$0(Ljava/io/File;Ljava/io/File;)Z

    .line 283
    return-void
.end method
