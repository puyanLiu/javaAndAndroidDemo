.class public Lorg/luaj/vm2/ast/Name;
.super Ljava/lang/Object;


# instance fields
.field public final name:Ljava/lang/String;

.field public variable:Lorg/luaj/vm2/ast/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Name;->name:Ljava/lang/String;

    return-void
.end method
