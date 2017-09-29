.class public Lcom/alipay/mobile/personalbase/service/FavoriteService$Info;
.super Ljava/lang/Object;
.source "FavoriteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/service/FavoriteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field public code:I

.field public info:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/personalbase/service/FavoriteService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/personalbase/service/FavoriteService;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/service/FavoriteService$Info;->this$0:Lcom/alipay/mobile/personalbase/service/FavoriteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
