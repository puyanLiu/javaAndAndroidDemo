.class Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;

.field private final synthetic val$i:I

.field private final synthetic val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;Lcom/alipay/mobile/beehive/photo/data/LoadInfo;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->this$1:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$s:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$i:I

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$s:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;->val$i:I

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->onLoadProgress(Ljava/lang/String;II)V

    .line 213
    return-void
.end method
