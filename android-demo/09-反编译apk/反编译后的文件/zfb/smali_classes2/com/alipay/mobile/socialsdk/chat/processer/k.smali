.class final Lcom/alipay/mobile/socialsdk/chat/processer/k;
.super Ljava/lang/Object;
.source "ChatResourceProcesser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    .line 525
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->a:Ljava/lang/String;

    .line 526
    return-void
.end method
