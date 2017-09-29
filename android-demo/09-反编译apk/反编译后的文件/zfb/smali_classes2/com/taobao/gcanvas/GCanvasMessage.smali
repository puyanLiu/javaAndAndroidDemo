.class public Lcom/taobao/gcanvas/GCanvasMessage;
.super Ljava/lang/Object;
.source "GCanvasMessage.java"


# instance fields
.field public boolFlag:Z

.field public devicePixelRatio:D

.field public drawCommands:Ljava/lang/String;

.field public height:I

.field public hiQualityFlag:Z

.field public resultContext:Lcom/taobao/gcanvas/GCanvasResult;

.field public textureID:I

.field public type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public url:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 41
    return-void
.end method
