import blogData from './blog.json'
type Blog = {
  id: number,
  bw_label: string,
  bw_uri: string,
  author: string
}
export function Blog() {
  return (
    <div className="container">
      <div className="blog">
        {blogData.map((blog: Blog) =>
          <div className="card" key={blog.id}>
            <div className="details">
              <h2>{blog.bw_label}</h2>
              <h4>{blog.author}</h4>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
