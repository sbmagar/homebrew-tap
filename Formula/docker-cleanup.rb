class DockerCleanup < Formula
  desc "Cleans up Docker images and volumes"
  homepage "https://budhathokisagar.com.np.com"
  url "https://drive.google.com/uc?export=download&id=1lR1EEg_IxFzsOzScEghGfJTRebnoH4R-"
  sha256 "0c5cef45ca975b264ae9708228c16baa5c0171dadffa53ddc3131b38621138f1"

  def install
    bin.install "cleanup_docker.sh" => "docker-cleanup"
  end

  test do
    system "#{bin}/docker-cleanup", "--version"
  end
end

