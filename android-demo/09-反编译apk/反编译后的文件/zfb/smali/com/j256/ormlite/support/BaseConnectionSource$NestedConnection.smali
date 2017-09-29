.class Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
.super Ljava/lang/Object;
.source "BaseConnectionSource.java"


# instance fields
.field public final connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field private nestedC:I


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    .line 106
    return-void
.end method


# virtual methods
.method public decrementAndGet()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    .line 114
    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->nestedC:I

    .line 110
    return-void
.end method
