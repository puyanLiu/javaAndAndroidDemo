.class Lcom/alipay/mobile/emotion/drag/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$1;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$1;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$0(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
