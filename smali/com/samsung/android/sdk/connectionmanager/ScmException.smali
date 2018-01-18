.class public Lcom/samsung/android/sdk/connectionmanager/ScmException;
.super Ljava/lang/RuntimeException;
.source "ScmException.java"


# static fields
.field public static final SERVICE_NOT_CONNECTED:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 18
    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 60
    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 51
    iput p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 40
    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 29
    iput p2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    .line 30
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmException;->mType:I

    return v0
.end method
